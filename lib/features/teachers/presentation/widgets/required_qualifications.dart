import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/discrete_bar_qualification.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class RequiredQualifications extends StatelessWidget {
  const RequiredQualifications({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  double getQualificationValueByCode(int code) {
    final requiredQualifications = teacher?.course?.requiredQualifications;

    return (requiredQualifications
                ?.firstWhere((element) => element.qualification?.code == code)
                .averageQualification ??
            0.0) /
        Globals.maxQualificationValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DiscreteBarQualification(
          asset: 'brain',
          text: '¿QUÉ TANTO APRENDISTE?',
          color: AppTheme.primaryStatsColor,
          value: getQualificationValueByCode(1),
          count: 5,
        ),
        DiscreteBarQualification(
          asset: 'parchment',
          text: '¿QUÉ TAN ALTO CALIFICA?',
          color: AppTheme.secondaryStatsColor,
          value: getQualificationValueByCode(2),
          count: 5,
        ),
        DiscreteBarQualification(
          asset: 'heart',
          text: '¿QUÉ TAN BUENA GENTE ES?',
          color: AppTheme.tertiaryStatsColor,
          value: getQualificationValueByCode(3),
          count: 5,
        ),
      ],
    );
  }
}