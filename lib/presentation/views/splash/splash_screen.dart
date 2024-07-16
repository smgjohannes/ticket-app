import 'package:basics/application/core/widgets/primary_button.dart';
import 'package:basics/presentation/widgets/splash_widgets/overlay_container.dart';
import 'package:basics/presentation/widgets/splash_widgets/splash_texts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
          ),
          OverlayContainer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SplashTexts(),
              const SizedBox(height: 40),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PrimaryButton(
                      width: 110,
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      text: 'Sign Up',
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      width: 110,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      text: 'Login',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
