import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class AuthAlertDialog extends StatelessWidget {
  const AuthAlertDialog(
      {super.key,
      this.icon,
      this.iconColor,
      required this.title,
      required this.content,
      this.onAccept});

  final Icon? icon;
  final Color? iconColor;
  final String title;
  final String content;
  final Function()? onAccept;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      icon: icon, // Icon(Icons.check_circle_outline_rounded, size: 48),
      iconColor: iconColor, // Colors.green,
      // iconPadding: EdgeInsets.symmetric(vertical: 16),
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      titleTextStyle: const TextStyle(
        color: AppTheme.primaryText,
        fontFamily: 'GothamRounded',
        fontSize: 30,
        height: 36 / 30,
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      contentTextStyle: const TextStyle(
        color: AppTheme.alertDialogContentColor,
        fontSize: 17,
        height: 20 / 17,
      ),
      actions: [
        TextButton(
            onPressed: onAccept,
            child: const Text('Aceptar',
                style: TextStyle(
                  color: AppTheme.alertDialogButtonColor,
                  fontSize: 15,
                  height: 20 / 15,
                  letterSpacing: 0.01,
                ))),
      ],
    );
  }
}
