import 'dart:convert';
import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/authentication.dart'
    hide Student, accountRepositoryProvider, UpdateInfoFormResult;
import 'package:wabu/features/update_info/update_info.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';
import 'package:wabu/features/student/domain/student/student.dart';
import 'package:wabu/utils/utils.dart';

part 'update_info_controller.g.dart';

@riverpod
class UpdateInfoController extends _$UpdateInfoController {
  @override
  UpdateInfoState build() {
    fetchData();
    return const UpdateInfoState();
  }

  String getStudentPhotoUrl(int index) {
    return 'https://wabu-production.s3.amazonaws.com/configurations/students/profiles/student_profile_0${index.toString().padLeft(2, '0')}.jpg';
  }

  void fetchData() async {
    try {
      final getUniversitiesResponse =
          await ref.watch(universityRepositoryProvider).getUniversities();

      final universities = getUniversitiesResponse.fold<List<University>>(
        (failure) => [],
        (universities) => universities,
      );

      universities.insert(0, const University(name: 'Escoge tu universidad'));
      universities.add(
          const University(idUniversity: '-1', name: 'No está mi universidad'));

      int newIndex = Random().nextInt(20) + 1;

      state = state.copyWith(
        photo: getStudentPhotoUrl(newIndex),
        universities: universities,
      );
      state = state.copyWith(
        isInfoCompleted: validateInfoCompleted(),
      );

      if (Globals.updateInfoMode == UpdateInfoMode.logIn &&
          Globals.studentId != null) {
        final getStudentResponse = await ref
            .watch(studentRepositoryProvider)
            .getStudent(Globals.studentId!);

        getStudentResponse.fold((Failure failure) {}, (Student student) {
          if (student.idUniversity.isNotEmpty) {
            selectUniversity(student.idUniversity);
          }

          state = state.copyWith(
            photo: (student.profileUrl.isNotEmpty)
                ? student.profileUrl
                : getStudentPhotoUrl(newIndex),
            firstName: student.firstName,
            lastName: student.lastName,
            aboutMe: student.information,
            university:
                (student.idUniversity.isEmpty) ? null : student.idUniversity,
          );
        });
      }

      state = state.copyWith(
        status: Status.loaded,
      );
    } catch (e) {
      setPageError();
    }
  }

  void onPhotoChanged(int value) {
    state = state.copyWith(
      photo: getStudentPhotoUrl(value),
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void onFirstNameChanged(String value) {
    state = state.copyWith(
      firstName: value,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void onLastNameChanged(String value) {
    state = state.copyWith(
      lastName: value,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void onAboutMeChanged(String value) {
    state = state.copyWith(
      aboutMe: value,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void selectUniversity(String? universityId) {
    final careers = [const Career(name: 'Escoge tu carrera')];

    if (universityId == null || universityId == '-1') {
      state = state.copyWith(
        university: universityId,
        career: null,
        cycle: null,
        careers: careers,
        cycles: <String?>[null],
        isInfoCompleted: false,
      );
      return;
    }

    final universityCareers = state.universities
        .firstWhere((university) => university.idUniversity == universityId)
        .careers
        .toList();

    universityCareers.sort((a, b) => a.name.compareTo(b.name));
    careers.addAll(universityCareers);

    state = state.copyWith(
      university: universityId,
      career: null,
      cycle: null,
      careers: careers,
      isInfoCompleted: false,
    );
  }

  void selectCareer(String? careerId) {
    final cycles = <String?>[null];

    if (careerId == null) {
      state = state.copyWith(
        career: careerId,
        cycle: null,
        cycles: cycles,
        isInfoCompleted: false,
      );
      return;
    }

    final careerCycles =
        state.careers.firstWhere((c1) => c1.idCareer == careerId).cicles;

    cycles.addAll(careerCycles);

    state = state.copyWith(
      career: careerId,
      cycles: cycles,
      cycle: null,
      isInfoCompleted: false,
    );
  }

  void selectCycle(String? cycle) {
    state = state.copyWith(
      cycle: cycle,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void acceptTerms(bool accepted) {
    state = state.copyWith(
      isTermsAccepted: accepted,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  bool validateInfoCompleted() {
    return state.photo.isNotEmpty &&
        state.firstName.isNotEmpty &&
        state.lastName.isNotEmpty &&
        (state.university != null && state.university != '-1') &&
        state.career != null &&
        state.cycle != null &&
        state.isTermsAccepted;
  }

  void submitUpdatedInfo() async {
    final repository = ref.watch(accountRepositoryProvider);

    try {
      state = state.copyWith(
        status: Status.loading,
      );

      final form = UpdateInfoForm(
        idStudent: Globals.studentId!,
        profileUrl: state.photo,
        firstName: state.firstName,
        lastName: state.lastName,
        information: state.aboutMe,
        idUniversity: state.university!,
        idCareer: state.career!,
        cicleName: state.cycle!,
        isAcceptedTermCoditions: state.isTermsAccepted,
        isRegisterNewAccount: Globals.updateInfoMode == UpdateInfoMode.signUp,
      );

      logger.d(form);

      final updateRegistrationInfoResult =
          await repository.updateRegistrationInfo(form);

      updateRegistrationInfoResult.fold((failure) {
        setPageError();
      }, (UpdateInfoFormResult result) async {
        if (result.isUpdate == true) {
          if (Globals.updateInfoMode == UpdateInfoMode.signUp) {
            await login();
          }

          state = state.copyWith(status: Status.valid);
        }
      });
    } catch (error) {
      setPageError();
    }
  }

  Future<void> login() async {
    try {
      final authRepository = ref.watch(authRepositoryProvider);
      final getKeysResult = await authRepository.getKeys();

      getKeysResult.fold((Failure failure) {
        setPageError();
      }, (AuthKeys authKeys) async {
        final encryptedLoginForm = _encryptLoginForm(authKeys);
        logger.d(encryptedLoginForm);
        final logInResult = await authRepository.logIn(encryptedLoginForm);
        logger.d(logInResult);

        logInResult.fold((Failure failure) {
          switch (failure.errorCode) {
            default:
              setPageError();
              break;
          }
        }, (Token token) async {
          final prefs = await SharedPreferences.getInstance();

          Globals.studentId = token.idStudent;
          Globals.universityId = token.idUniversity;
          Globals.isFirstLogin = token.isFirstLogin;
          Globals.token = token.token;
          await prefs.setString('token', token.token);
          await prefs.setString('studentId', token.idStudent);
          await prefs.setString('universityId', token.idUniversity);

          state = state.copyWith(
            status: Status.valid,
          );

          setPageLoaded();
        });
      });
    } catch (error) {
      setPageError();
    }
  }

  EncryptedForm _encryptLoginForm(AuthKeys authKeys) {
    final encryptedEmail =
        Cipher.encrypt(Globals.newEmail!, base64.decode(authKeys.keys.x1));
    final encryptedPassword =
        Cipher.encrypt(Globals.password!, base64.decode(authKeys.keys.x2));

    final loginMap = {
      'email': encryptedEmail,
      'password': encryptedPassword,
    };

    final encryptedLoginMap = Cipher.encryptMapWithBaseKey(loginMap);

    return EncryptedForm(
      hash: authKeys.hash,
      data: encryptedLoginMap,
    );
  }

  void setPageLoaded() {
    state = state.copyWith(
      status: Status.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      status: Status.error,
    );
  }
}
