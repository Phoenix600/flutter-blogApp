import 'package:bloggy/core/theme/app_pallete.dart';
import 'package:bloggy/feature/auth/presentation/pages/signup_page.dart';
import 'package:bloggy/feature/auth/presentation/widgets/auth_field.dart';
import 'package:bloggy/feature/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

/// Class For Logging In
class SignInPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignInPage());

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign In.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              AuthField(
                  hintText: "Email", textEditingController: emailController),
              const SizedBox(height: 15),
              AuthField(
                hintText: "Password",
                textEditingController: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 15),
              const AuthGradientButton(buttonText: "siginIn"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => {Navigator.push(context, SignupPage.route())},
                child: RichText(
                    text: TextSpan(
                  text: "Don't have an account?",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: " Sign Up",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient3,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
