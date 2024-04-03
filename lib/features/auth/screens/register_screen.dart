import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initial_setup/features/auth/widgets/auth_button.dart';
import 'package:initial_setup/features/auth/widgets/auth_text_field.dart';
import 'package:initial_setup/features/auth/bloc/auth_bloc.dart';
import 'package:initial_setup/features/auth/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: 'Name',
                controller: nameController,
              ),
              const SizedBox(height: 15),
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
                buttonText: 'Sign Up',
                onPressed: () {
                  context.read<AuthBloc>().add(
                        AuthRegister(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
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
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: RichText(
                    text: TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.titleMedium,
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
