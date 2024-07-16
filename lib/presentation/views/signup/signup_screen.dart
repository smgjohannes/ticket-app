import 'package:basics/presentation/widgets/signup_widgets/signup_form.dart';
import 'package:basics/presentation/widgets/signup_widgets/signup_texts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignUpTexts(),
                SizedBox(height: 16),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
