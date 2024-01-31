import 'package:flutter/material.dart';

class LoaderTransparent extends StatelessWidget {
  const LoaderTransparent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Image.asset('assets/images/loader.gif'),
      ),
    );
  }
}
