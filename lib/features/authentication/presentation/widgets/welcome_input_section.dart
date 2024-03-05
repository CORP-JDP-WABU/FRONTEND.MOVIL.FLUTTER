import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';

class WelcomeInputSection extends StatelessWidget {
  const WelcomeInputSection({super.key, required this.textForms});

  final List<CustomTextFormField> textForms;

  List<Widget> getChildren() {
    final children = <Widget>[];

    for (var element in textForms) {
      children.add(element);
      children.add(const SizedBox(height: 12));
    }

    if (children.isNotEmpty) {
      children.removeLast();
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: getChildren(),
    );
  }
}
