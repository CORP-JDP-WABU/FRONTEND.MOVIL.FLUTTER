import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/profile_clipper.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeacherProfileHeader extends StatelessWidget {
  const TeacherProfileHeader({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

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
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: SafeArea(
              child: _TeacherProfileHeaderContent(teacher: teacher),
            ),
          ),
        ),
      ],
    );
  }
}

class _TeacherProfileHeaderContent extends StatelessWidget {
  const _TeacherProfileHeaderContent({
    required this.teacher,
  });

  final Teacher? teacher;

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
              backgroundImage: NetworkImage(teacher?.profileUrl ?? ''),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            teacher?.lastName ?? 'no-last-name',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              height: 24 / 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            teacher?.firstName ?? 'no-first-name',
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
