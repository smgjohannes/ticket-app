import 'package:flutter/material.dart';

class LoginTexts extends StatelessWidget {
  const LoginTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Login to your Account',
        style: TextStyle(
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          fontSize: 48,
          color: Colors.black,
        ),
      ),
    );
  }
}
