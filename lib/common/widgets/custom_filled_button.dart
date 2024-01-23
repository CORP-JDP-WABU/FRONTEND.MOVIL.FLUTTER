import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.textColor,
      required this.minimumWidth,
      this.maximumWidthMargins = 0,
      this.backgroundColor,
      this.overlayColor,
      this.fontSize = 16,
      this.linearGradient});

  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final double minimumWidth;
  final double maximumWidthMargins;
  final Color? backgroundColor;
  final LinearGradient? linearGradient;
  final Color? overlayColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.zero,
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: linearGradient,
          borderRadius: BorderRadius.circular(25),
        ),
        child: _CustomButtonContent(
          minimumWidth: minimumWidth,
          screenWidth: screenWidth,
          maximumWidthMargins: maximumWidthMargins,
          text: text,
          textColor: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

class _CustomButtonContent extends StatelessWidget {
  const _CustomButtonContent({
    required this.minimumWidth,
    required this.screenWidth,
    required this.maximumWidthMargins,
    required this.text,
    required this.textColor,
    required this.fontSize,
  });

  final double minimumWidth;
  final double screenWidth;
  final double maximumWidthMargins;
  final String text;
  final Color? textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: minimumWidth,
        minHeight: 48,
        maxWidth: screenWidth - maximumWidthMargins,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          height: 19 / fontSize,
        ),
      ),
    );
  }
}
