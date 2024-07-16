import 'package:basics/application/core/services/theme_service.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/views/splash/splash_screen.dart';
import 'presentation/views/login/login_screen.dart';
import 'presentation/views/signup/signup_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traffic TicketEase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}
