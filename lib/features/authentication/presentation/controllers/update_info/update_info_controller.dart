import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/data/providers.dart';
import 'package:wabu/features/authentication/domain/models/career/career.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form/update_info_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';
import 'package:wabu/features/authentication/presentation/controllers/update_info/update_info_state.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';
import 'package:wabu/features/student/domain/student/student.dart';

part 'update_info_controller.g.dart';

@riverpod
class UpdateInfoController extends _$UpdateInfoController {
  @override
  UpdateInfoState build() {
    fetchData();
    return const UpdateInfoState();
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

      int newIndex = Random().nextInt(6) + 1;

      state = state.copyWith(
        photo: 'profile-student-avatar-00$newIndex.png',
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

          if (student.idCareer.isNotEmpty) {
            selectCareer(student.idCareer);
          }

          state = state.copyWith(
            photo: (student.profileUrl.isNotEmpty)
                ? student.profileUrl
                : 'profile-student-avatar-00$newIndex.png',
            firstName: student.firstName,
            lastName: student.lastName,
            aboutMe: student.information,
            univeristy:
                (student.idUniversity.isEmpty) ? null : student.idUniversity,
            career: (student.idCareer.isEmpty) ? null : student.idCareer,
            cycle: (student.cicle.isEmpty) ? null : student.cicle,
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
      photo: 'profile-student-avatar-00$value.png',
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
        state.aboutMe.isNotEmpty &&
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
      );

      final updateRegistrationInfoResult =
          await repository.updateRegistrationInfo(form);

      updateRegistrationInfoResult.fold((failure) {
        setPageError();
      }, (UpdateInfoFormResult result) async {
        if (result.isUpdate == true) {
          setPageIdle();
          state = state.copyWith(status: Status.valid);
        }
      });
    } catch (error) {
      setPageError();
    }
  }

  void setPageIdle() {
    ref
        .read(welcomePageControllerProvider.notifier)
        .setPageStatus(WelcomeStatus.idle);
  }

  void setPageError() {
    ref
        .read(welcomePageControllerProvider.notifier)
        .setPageStatus(WelcomeStatus.error);
  }
}
