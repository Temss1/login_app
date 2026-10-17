import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  final String label;
  final String hint;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const SignupFormWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TextFormField(
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