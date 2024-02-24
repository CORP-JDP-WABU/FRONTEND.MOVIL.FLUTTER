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
    this.verticalPadding = 16,
    this.boxShadow,
  });

  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final double? minimumWidth;
  final Color? backgroundColor;
  final LinearGradient? linearGradient;
  final double verticalPadding;
  final List<BoxShadow> ? boxShadow;

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
          boxShadow: boxShadow,
        ),
        child: _CustomButtonContent(
          minimumWidth: minimumWidth,
          text: text,
          textColor: textColor,
          verticalPadding: verticalPadding,
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
    required this.verticalPadding,
  });

  final double? minimumWidth;
  final String text;
  final Color textColor;
  final double verticalPadding;

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
          ? BoxConstraints(minWidth: minimumWidth!, minHeight: 24)
          : null,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 32, vertical: verticalPadding),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
