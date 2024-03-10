import 'package:bloggy/core/theme/theme.dart';
import 'package:bloggy/feature/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bloggy',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
    );
  }
}
