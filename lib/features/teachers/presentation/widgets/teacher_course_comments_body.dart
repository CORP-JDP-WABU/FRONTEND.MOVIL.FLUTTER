import 'package:flutter/material.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/widgets/widgets.dart';

class TeacherCourseCommentsBody extends StatelessWidget {
  const TeacherCourseCommentsBody({
    super.key,
    required this.teacher,
    required this.teacherCourseComments,
  });

  final Teacher? teacher;
  final TeacherCourseComments? teacherCourseComments;

  @override
  Widget build(BuildContext context) {
    final comments = teacherCourseComments?.students ?? [];

    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 32,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              TeacherCourseDetails(teacher: teacher),
              const SizedBox(height: 20),
              _TeacherCourseCommentList(comments: comments),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}

class _TeacherCourseCommentList extends StatelessWidget {
  const _TeacherCourseCommentList({
    required this.comments,
  });

  final List<TeacherCourseStudentComment> comments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: comments.length,
      controller: null,
      physics: null,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final comment = comments[index];

        return TeacherCommentItem(comment: comment);
      },
    );
  }
}
