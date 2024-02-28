import 'dart:convert';
import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/data/providers.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/career/career.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/token/token.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form/update_info_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';
import 'package:wabu/features/authentication/presentation/controllers/update_info/update_info_state.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';
import 'package:wabu/features/student/domain/student/student.dart';
import 'package:wabu/utils/cipher.dart';
import 'package:wabu/utils/logger.dart';

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
            univeristy:
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
        careers: careers,
        cycles: <String?>[null],
      );
      state = state.copyWith(
        isInfoCompleted: validateInfoCompleted(),
      );
      return;
    }

    final universityCareers = state.universities
        .firstWhere((university) => university.idUniversity == universityId)
        .careers;

    careers.addAll(universityCareers);

    state = state.copyWith(
      univeristy: universityId,
      careers: careers,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
    );
  }

  void selectCareer(String? careerId) {
    final cycles = <String?>[null];

    if (careerId == null) {
      state = state.copyWith(
        cycles: cycles,
      );
      state = state.copyWith(
        isInfoCompleted: validateInfoCompleted(),
      );
      return;
    }

    final careerCycles =
        state.careers.firstWhere((c1) => c1.idCareer == careerId).cicles;

    cycles.addAll(careerCycles);

    state = state.copyWith(
      career: careerId,
      cycles: cycles,
    );
    state = state.copyWith(
      isInfoCompleted: validateInfoCompleted(),
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
        state.univeristy != null &&
        state.career != null &&
        state.cycle != null &&
        state.isTermsAccepted;
  }

  void submitUpdatedInfo() async {
    final repository = ref.watch(accountRepositoryProvider);

    try {
      ref
          .read(welcomePageControllerProvider.notifier)
          .setPageStatus(WelcomeStatus.posting);

      final form = UpdateInfoForm(
        idStudent: Globals.studentId!,
        profileUrl: state.photo,
        firstName: state.firstName,
        lastName: state.lastName,
        information: state.aboutMe,
        idUniversity: state.univeristy!,
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
