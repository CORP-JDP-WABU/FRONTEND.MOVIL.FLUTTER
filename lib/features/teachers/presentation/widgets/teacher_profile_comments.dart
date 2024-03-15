import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/domain.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';
import 'package:wabu/utils/utils.dart';

class TeacherProfileComments extends StatelessWidget {
  const TeacherProfileComments({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () {
          FirebaseAnalyticsHandler.instance.logSelectContent(
            contentType: AnalyticsContentType.button.contentType,
            itemId: AnalyticsContentItemId.courseTeacherComments.itemId,
          );

          final commentsQuantity = teacher?.course?.manyComments ?? 0;

          if (commentsQuantity <= 0) return;

          context.pushNamed(TeacherCourseCommentsScreen.name);
        },
        child: Material(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 12,
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svgs/message.svg'),
                const SizedBox(width: 16),
                _CommentsQuantityLabel(teacher: teacher),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CommentsQuantityLabel extends StatelessWidget {
  const _CommentsQuantityLabel({
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    final commentsCount = teacher?.course?.manyComments ?? 0;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$commentsCount',
            style: const TextStyle(
              color: AppTheme.commentsColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: (commentsCount == 1) ? ' comentario' : ' comentarios',
            style: const TextStyle(
              color: AppTheme.commentsColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
