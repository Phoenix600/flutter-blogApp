import 'package:bloggy/core/secrets/app_secrets.dart';
import 'package:bloggy/core/theme/theme.dart';
import 'package:bloggy/feature/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main(List<String> args) async {
  
  WidgetsFlutterBinding.ensureInitialized();
  final supaBase = await Supabase.initialize(
      url: AppSecrets.supaBaseUrl, anonKey: AppSecrets.anonKey);
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
