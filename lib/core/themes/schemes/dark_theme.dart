import 'package:flutter/material.dart';
import 'package:initial_setup/core/themes/colors.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.black,
  ),
);
