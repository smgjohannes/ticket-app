import 'package:flutter/material.dart';

class SplashTexts extends StatelessWidget {
  const SplashTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 200.0),
          child: Text(
            'Ticket Ease',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Urbanist',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Effortlessly Manage Your Traffic Fines Track, pay, and manage all your traffic tickets in one place. Stay updated on outstanding fines, access payment history, and resolve tickets quickly with our user-friendly interface. Get started now and take control of your traffic fines with ease!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist',
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
