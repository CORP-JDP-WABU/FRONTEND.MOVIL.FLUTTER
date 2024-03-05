import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.obscureText,
    this.initialValue,
    required this.hint,
    required this.onChanged,
    this.errorMessage,
  });

  final bool obscureText;
  final String? initialValue;
  final String hint;
  final Function(String)? onChanged;
  final String? errorMessage;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      obscureText: isObscured,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide.none,
        ),
        fillColor: AppTheme.inputBackgroundColor,
        filled: true,
        suffixIcon: (widget.obscureText)
            ? IconButton(
                icon: Icon((isObscured) ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                color: AppTheme.bodyTextColor,
              )
            : null,
        isDense: true,
        hintStyle: const TextStyle(
          color: AppTheme.bodyTextColor,
          fontFamily: 'SFProDisplay',
          fontSize: 17,
          height: 20 / 17,
          fontWeight: FontWeight.w400,
        ),
        errorText: widget.errorMessage,
        errorMaxLines: 5,
        hintText: widget.hint,
      ),
    );
  }
}
