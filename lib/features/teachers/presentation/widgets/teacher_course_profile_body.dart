import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/no_qualifications_found_widget.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/widgets/widgets.dart';

class TeacherProfileBody extends StatelessWidget {
  const TeacherProfileBody({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  bool hasOptionalQualifications(Teacher? teacher) {
    final optionalQualifications = teacher?.course?.optionalQualifications;

    if (optionalQualifications == null) return false;

    for (var element in optionalQualifications) {
      if ((element.countQualifications ?? 0) > 0) {
        return true;
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 32,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            TeacherProfileDetails(teacher: teacher),
            TeacherCourseDetails(teacher: teacher),
            const SizedBox(height: 20),
            RequiredQualifications(teacher: teacher),
            TeacherProfileComments(teacher: teacher),
            hasOptionalQualifications(teacher)
                ? OptionalQualifications(teacher: teacher)
                : const NoQualificationsFoundWidget(),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
