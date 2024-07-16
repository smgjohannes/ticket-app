import 'package:basics/presentation/views/login/login_bloc/login_bloc.dart';
import 'package:basics/presentation/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:basics/application/core/widgets/custom_text_field.dart';
import 'package:basics/application/core/widgets/primary_button.dart';
import 'package:basics/application/core/widgets/remember_me_checkbox.dart';
import 'package:basics/presentation/views/signup/signup_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void toggleRememberMe(bool? value) {
    setState(() {
      rememberMe = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      child: Column(
        children: [
          CustomTextField(
            controller: _emailController,
            labelText: 'Email',
            icon: Icons.email,
            obscureText: false,
          ),
          const SizedBox(height: 40),
          CustomTextField(
            controller: _passwordController,
            labelText: 'Password',
            obscureText: true,
            icon: Icons.remove_red_eye_outlined,
          ),
          const SizedBox(height: 20),
          RememberMeCheckbox(
            value: rememberMe,
            onChanged: toggleRememberMe,
          ),
          const SizedBox(height: 20),
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return PrimaryButton(
                width: 140, // fixed width
                onPressed: () {
                  context.read<LoginBloc>().add(
                        LoginButtonPressed(
                          email: _emailController.text,
                          password: _passwordController.text,
                        ),
                      );
                },
                text: state is LoginLoading ? 'Logging in...' : 'Login',
              );
            },
          ),
          TextButton(
            onPressed: () {
              // Handle forgot password
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
            },
            child: const Text(
              'Don\'t have an account? Sign Up',
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
