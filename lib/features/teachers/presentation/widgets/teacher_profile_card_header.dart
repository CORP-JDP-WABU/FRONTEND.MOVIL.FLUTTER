import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/profile_clipper.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherProfileCardHeader extends StatelessWidget {
  const TeacherProfileCardHeader({
    super.key,
    required this.teacher,
  });

  final TeacherV2 teacher;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 360,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        ClipPath(
          clipper: ProfileClipper(),
          child: Container(
            height: 400,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(54, 181, 236, 1.000),
                  Color.fromRGBO(47, 163, 240, 1.000),
                  Color.fromRGBO(38, 137, 245, 1.000),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: _TeacherProfileCardHeaderContent(teacher: teacher),
            ),
          ),
        ),
      ],
    );
  }
}

class _TeacherProfileCardHeaderContent extends StatelessWidget {
  const _TeacherProfileCardHeaderContent({
    required this.teacher,
  });

  final TeacherV2 teacher;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBackButton(
            color: Colors.white,
            onTap: () => context.pop(),
          ),
          const SizedBox(height: 16),
          Material(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 72,
              backgroundImage: NetworkImage(teacher.photoUrl),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            teacher.lastName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              height: 24 / 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            teacher.firstName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              height: 24 / 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}