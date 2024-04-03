import 'package:flutter/material.dart';
import 'package:initial_setup/core/themes/colors.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObsecureText;
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObsecureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: isObsecureText,
    );
  }
}
