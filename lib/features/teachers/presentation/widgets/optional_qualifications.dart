import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/continuous_qualification_object.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class OptionalQualifications extends StatelessWidget {
  const OptionalQualifications({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  double getQualificationValueByCode(int code) {
    final optionalQualifications = teacher?.course?.optionalQualifications;

    return (optionalQualifications
                ?.firstWhere((element) => element.qualification?.code == code)
                .averageQualification ??
            0.0) /
        Globals.maxQualificationValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionalQualificationTag(
          asset: 'clip',
          text: 'Carga Académica',
          color: AppTheme.secondary1Color,
          selectedRating: const [' - ', 'Nunca', 'A veces', 'Siempre'],
          value: getQualificationValueByCode(4),
        ),
        OptionalQualificationTag(
          asset: 'clock',
          text: 'Exigencia',
          color: AppTheme.secondary1Color,
          selectedRating: const [' - ', 'Nunca', 'A veces', 'Siempre'],
          value: getQualificationValueByCode(5),
        ),
        OptionalQualificationTag(
          asset: 'pencil',
          text: 'Toma de asistencia',
          color: AppTheme.secondary1Color,
          selectedRating: const [' - ', 'Nunca', 'A veces', 'Siempre'],
          value: getQualificationValueByCode(6),
        ),
      ],
    );
  }
}
