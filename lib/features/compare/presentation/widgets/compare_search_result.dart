import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/teacher_required_qualification_indicator.dart';
import 'package:wabu/features/compare/presentation/widgets/widgets.dart';

class CompareSearchResult extends StatelessWidget {
  const CompareSearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: const Color(0xFFF3F3F3),
            child: Column(
              children: [
                Image.network(
                  'https://uvn-brightspot.s3.amazonaws.com/assets/vixes/imj/imujer/5/5-tipos-de-profesores-que-nunca-vas-a-olvidar-2.jpg',
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Text(
                        'Mariana Rondón',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF02336A),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: '2.4',
                              assetName: 'star',
                              color: Color(0xFFFFC32A),
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: '12',
                              assetName: 'message',
                              color: Color(0xFF2ACBFF),
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: '27',
                              assetName: 'person',
                              color: Color(0xFF646464),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
        const Positioned(
          top: -4,
          right: -4,
          height: 28,
          width: 28,
          child: SelectionButton(),
        ),
      ],
    );
  }
}
