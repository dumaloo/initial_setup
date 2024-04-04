import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initial_setup/features/auth/widgets/auth_button.dart';
import 'package:initial_setup/features/auth/widgets/auth_text_field.dart';
import 'package:initial_setup/features/auth/bloc/auth_bloc.dart';
import 'package:initial_setup/features/auth/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In.',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            AuthField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 15),
            AuthField(
              hintText: 'Password',
              controller: passwordController,
              isObsecureText: true,
            ),
            const SizedBox(height: 20),
            AuthButton(
              buttonText: 'Sign In',
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthLoginEvent(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
              },
              child: RichText(
                  text: TextSpan(
                text: 'Don\'t have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
