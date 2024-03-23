import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/gradient_circle_avatar.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherProfileCardDetails extends StatelessWidget {
  const TeacherProfileCardDetails({
    super.key,
    required this.teacher,
  });

  final TeacherV2 teacher;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: Column(
          children: [
            GradientCircleAvatar(
              borderWidth: 3,
              radius: 72,
              imageProvider: NetworkImage(teacher.photoUrl),
            ),
            const SizedBox(height: 12),
            Text(
              teacher.lastName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppTheme.primaryText,
                fontSize: 20,
                height: 24 / 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              teacher.firstName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppTheme.primaryText,
                fontSize: 20,
                height: 24 / 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            TeacherProfileDetails(
              teacher: Teacher(
                idTeacher: teacher.id,
                firstName: teacher.firstName,
                lastName: teacher.lastName,
                email: teacher.email,
                information: teacher.information,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text(
                      (teacher.manyAverageQualifications).toStringAsFixed(2),
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 195, 42, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 4.0),
                  child: SvgPicture.asset(
                    'assets/images/svgs/star.svg',
                    height: 15,
                    width: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text((teacher.manyComments).toString(),
                      style: const TextStyle(
                        color: Color.fromRGBO(42, 203, 255, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 4.0),
                  child: SvgPicture.asset(
                    'assets/images/svgs/message.svg',
                    height: 15,
                    width: 15,
                    color: const Color.fromRGBO(42, 203, 255, 1.000),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text((teacher.manyQualifications).toString(),
                      style: const TextStyle(
                        color: AppTheme.student,
                        fontFamily: 'SFProDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 4.0),
                  child: SvgPicture.asset(
                    'assets/images/svgs/person.svg',
                    height: 15,
                    width: 15,
                    color: AppTheme.student,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
