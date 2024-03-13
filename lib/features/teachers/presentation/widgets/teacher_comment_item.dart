import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/gradient_circle_avatar.dart';
import 'package:wabu/common/widgets/selected_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

class TeacherCommentItem extends StatelessWidget {
  const TeacherCommentItem({
    super.key,
    required this.comment,
  });

  final TeacherCourseStudentComment comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _TeacherCommentCard(comment: comment),
          GradientCircleAvatar(
            borderWidth: 3,
            radius: 32,
            imageProvider: NetworkImage(comment.photoUrl ?? ''),
          ),
        ],
      ),
    );
  }
}

class _TeacherCommentCard extends StatelessWidget {
  const _TeacherCommentCard({
    required this.comment,
  });

  final TeacherCourseStudentComment comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 32),
        Expanded(
          child: Material(
            borderRadius: BorderRadius.circular(25),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 48,
                  top: 16,
                  bottom: 16,
                  right: 16,
                ),
                child: _CommentCardContent(comment: comment),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CommentCardContent extends StatelessWidget {
  const _CommentCardContent({
    required this.comment,
  });

  final TeacherCourseStudentComment comment;

  @override
  Widget build(BuildContext context) {
    bool liked = comment.likes?.contains(Globals.studentId) ?? false;
    bool disliked = comment.dislikes?.contains(Globals.studentId) ?? false;

    return Column(
      children: [
        _CommentCardContentHeader(comment: comment),
        const SizedBox(height: 2),
        _CommentCardContentBody(comment: comment),
        const SizedBox(height: 4),
        _CommentCardContentFooter(
          createdAt: comment.createdAtString ?? '',
          liked: liked,
          disliked: disliked,
        ),
      ],
    );
  }
}

class _CommentCardContentHeader extends StatelessWidget {
  const _CommentCardContentHeader({
    required this.comment,
  });

  final TeacherCourseStudentComment comment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        comment.fullName ?? '',
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: AppTheme.teacherCommentTitleColor,
        ),
      ),
    );
  }
}

class _CommentCardContentBody extends StatelessWidget {
  const _CommentCardContentBody({
    required this.comment,
  });

  final TeacherCourseStudentComment comment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        comment.comment ?? '',
        style: const TextStyle(
          fontSize: 10,
          height: 14 / 10,
          color: AppTheme.teacherCommentBodyColor,
        ),
      ),
    );
  }
}

class _CommentCardContentFooter extends StatelessWidget {
  const _CommentCardContentFooter({
    required this.createdAt,
    required this.liked,
    required this.disliked,
  });

  final String createdAt;
  final bool liked;
  final bool disliked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text(
        //   createdAt,
        //   style: const TextStyle(
        //     fontSize: 10,
        //     height: 14 / 10,
        //     color: AppTheme.teacherCommentBodyColor,
        //   ),
        // ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SelectedButton(
                isSelected: liked,
                selectedIcon: Icons.thumb_up_rounded,
                unselectedIcon: Icons.thumb_up_outlined,
                color: AppTheme.teacheCommentLikeColor,
                size: 16,
              ),
              SelectedButton(
                isSelected: disliked,
                selectedIcon: Icons.thumb_down_rounded,
                unselectedIcon: Icons.thumb_down_outlined,
                color: AppTheme.teacheCommentDislikeColor,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
