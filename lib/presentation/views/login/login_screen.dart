import 'package:basics/presentation/views/login/login_bloc/login_bloc.dart';
import 'package:basics/presentation/widgets/login_widgets/login_form.dart';
import 'package:basics/presentation/widgets/login_widgets/login_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginTexts(),
              SizedBox(height: 90),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
