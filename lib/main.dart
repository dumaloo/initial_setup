import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initial_setup/core/themes/schemes/dark_theme.dart';
import 'package:initial_setup/features/auth/bloc/auth_bloc.dart';
import 'package:initial_setup/features/auth/screens/login_screen.dart';
import 'package:initial_setup/initializer.dart';

void main() {
  Initializer().initApp();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => Initializer().serviceLocator<AuthBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const LoginScreen(),
    );
  }
}
