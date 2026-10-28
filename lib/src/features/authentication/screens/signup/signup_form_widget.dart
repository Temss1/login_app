import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  final String label;
  final String hint;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;

  const SignupFormWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                label: Text(label),
                hint: Text(hint),
                prefixIcon: Icon(prefixIcon),
                suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}