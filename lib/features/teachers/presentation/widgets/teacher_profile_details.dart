import 'package:flutter/material.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

class TeacherProfileDetails extends StatelessWidget {
  const TeacherProfileDetails({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 2,
      ),
      child: Column(
        children: [
          teacher?.information == ''
              ? const SizedBox.shrink()
              : Text(
                  teacher?.information ??
                      'No hay información del profesor disponible por el momento',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 14 / 12,
                  ),
                ),
          teacher?.information == ''
              ? const SizedBox.shrink()
              : const SizedBox(height: 24),
          teacher?.email == ''
              ? const SizedBox.shrink()
              : Text(
                  teacher?.email ?? 'El profesor no tiene email disponible',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 14 / 12,
                  ),
                ),
        ],
      ),
    );
  }
}
