import 'package:basics/application/core/widgets/custom_date_picker_field.dart';
import 'package:basics/application/core/widgets/custom_dropdown_field.dart';
import 'package:basics/application/core/widgets/custom_phone_number_field.dart';
import 'package:basics/presentation/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basics/presentation/views/signup/bloc/signup_bloc.dart';
import 'package:basics/application/core/widgets/custom_text_field.dart';
import 'package:basics/application/core/widgets/primary_button.dart';
import 'package:basics/presentation/views/login/login_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController idController = TextEditingController();
    final TextEditingController licenseController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController postalController = TextEditingController();

    return BlocProvider(
      create: (context) => SignupBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            CustomTextField(
              labelText: 'Full Name',
              obscureText: false,
              controller: fullNameController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'ID Number/ Passport',
              obscureText: false,
              controller: idController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'License Number',
              obscureText: false,
              controller: licenseController,
            ),
            const SizedBox(height: 16),
            const CustomDatePickerField(
              labelText: 'Date of Birth',
            ),
            const SizedBox(height: 16),
            const CustomDropdownField(
              labelText: 'Gender',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Email',
              obscureText: false,
              icon: Icons.email,
              controller: emailController,
            ),
            const SizedBox(height: 16),
            const CustomPhoneNumberField(), // Use the custom phone number field
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Physical Address',
              obscureText: false,
              controller: addressController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'Postal Address',
              obscureText: false,
              controller: postalController,
            ),
            const SizedBox(height: 20),
            BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) {
                if (state is SignupLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SignupFailure) {
                  return Text(
                    state.error,
                    style: const TextStyle(color: Colors.red),
                  );
                }
                return BlocBuilder<SignupBloc, SignupState>(
                  builder: (context, state) {
                    return PrimaryButton(
                      width: 120, // fixed width
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      text:
                          state is SignupLoading ? 'Logging in...' : 'Continue',
                    );
                  },
                );
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(
                    fontFamily: 'Urbanist', fontSize: 16, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
