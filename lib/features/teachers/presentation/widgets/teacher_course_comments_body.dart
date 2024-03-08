import 'package:flutter/material.dart';
import 'package:wabu/features/teachers/domain/domain.dart';
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

    return SliverPadding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 32,
      ),
      sliver: DecoratedSliver(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        sliver: SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          sliver: SliverMainAxisGroup(
            slivers: [
              SliverToBoxAdapter(child: TeacherCourseDetails(teacher: teacher)),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              _TeacherCourseCommentList(comments: comments),
              const SliverToBoxAdapter(child: SizedBox(height: 28)),
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
    return SliverList.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];

        return TeacherCommentItem(comment: comment);
      },
    );
  }
}
