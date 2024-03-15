import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';

import 'package:wabu/features/teachers/teachers.dart';

class TeacherProfileCardHeader extends StatelessWidget {
  const TeacherProfileCardHeader({
    super.key,
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

          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
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
                    color: Colors.black,
                    fontSize: 20,
                    height: 24 / 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  teacher.firstName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    height: 24 / 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
