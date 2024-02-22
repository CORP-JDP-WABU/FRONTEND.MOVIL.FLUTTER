import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  
  final bool enabled;
  final VoidCallback eventHandler;

  ButtonComponent({
    Key ? key,
    required this.eventHandler,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor:  Color.fromARGB(255, 215, 215, 215),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 2.0,
        ),
        onPressed: enabled ? eventHandler : null,
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
