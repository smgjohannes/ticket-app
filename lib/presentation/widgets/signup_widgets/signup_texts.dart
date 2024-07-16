import 'package:flutter/material.dart';

class SignUpTexts extends StatelessWidget {
  const SignUpTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Create your Account',
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
