import 'package:bloggy/core/theme/app_pallete.dart';
import 'package:bloggy/feature/auth/presentation/pages/sigin_page.dart';
import 'package:bloggy/feature/auth/presentation/widgets/auth_field.dart';
import 'package:bloggy/feature/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

/// Class Creating the account of the user
class SignupPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignupPage());
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
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
                "Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              AuthField(
                  hintText: "Name", textEditingController: nameController),
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
              const AuthGradientButton(buttonText: "SignUp"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, SignInPage.route());
                },
                child: RichText(
                    text: TextSpan(
                  text: "Already have an account?",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: " SignIn",
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
