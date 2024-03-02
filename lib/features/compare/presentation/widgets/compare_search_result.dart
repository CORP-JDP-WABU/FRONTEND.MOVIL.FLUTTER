import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';
import 'package:wabu/features/search/domain/domain.dart';
import 'package:wabu/utils/utils.dart';

class CompareSearchResult extends ConsumerWidget {
  const CompareSearchResult({
    super.key,
    required this.isSelected,
    required this.teachersSearchResult,
  });

  final bool isSelected;
  final TeachersSearchResult teachersSearchResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  teachersSearchResult.photoUrl ?? '',
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Text(
                        '${teachersSearchResult.firstName} ${teachersSearchResult.lastName}',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF02336A),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: (teachersSearchResult
                                          .manyAverageQualifications ??
                                      0)
                                  .toStringAsFixed(1),
                              assetName: 'star',
                              color: const Color(0xFFFFC32A),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: HumanFormats.humanReadableNumber(
                                  teachersSearchResult.manyComments ?? 0),
                              assetName: 'message',
                              color: const Color(0xFF2ACBFF),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: TeacherRequiredQualificationIndicator(
                              value: HumanFormats.humanReadableNumber(
                                  teachersSearchResult.manyQualifications ?? 0),
                              assetName: 'person',
                              color: const Color(0xFF646464),
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
        Positioned(
          top: -4,
          right: -4,
          height: 28,
          width: 28,
          child: SelectionButton(
            onSelect: () {
              ref
                  .read(compareSearchControllerProvider.notifier)
                  .selectTeacher(teachersSearchResult.idTeacher ?? '');
            },
            onUnselect: () {
              ref
                  .read(compareSearchControllerProvider.notifier)
                  .unselectTeacher(teachersSearchResult.idTeacher ?? '');
            },
            isSelected: isSelected,
          ),
        ),
      ],
    );
  }
}
