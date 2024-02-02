import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.textColor,
    this.minimumWidth,
    this.backgroundColor,
    this.linearGradient,
  });

  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final double? minimumWidth;
  final Color? backgroundColor;
  final LinearGradient? linearGradient;

  @override
  Widget build(BuildContext context) {
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
          text: text,
          textColor: textColor,
        ),
      ),
    );
  }
}

class _CustomButtonContent extends StatelessWidget {
  const _CustomButtonContent({
    this.minimumWidth,
    required this.text,
    required this.textColor,
  });

  final double? minimumWidth;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    // return Wrap(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    //       child: Text(
    //         text,
    //         overflow: TextOverflow.ellipsis,
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //           color: textColor,
    //           fontSize: 16,
    //           fontWeight: FontWeight.w700,
    //           height: 19 / 16,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    return Container(
      constraints: (minimumWidth != null)
          ? BoxConstraints(minWidth: minimumWidth!, minHeight: 48)
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 19 / 16,
          ),
        ),
      ),
    );
  }
}
