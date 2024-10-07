// my_text_field.dart
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final bool isPasswordVisible;
  final Function? onSuffixIconPressed;

  MyTextField({
    required this.controller,
    required this.label,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.onSuffixIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? !isPasswordVisible : false,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey[600],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: onSuffixIconPressed != null
                    ? () => onSuffixIconPressed!()
                    : null,
              )
            : null,
      ),
    );
  }
}
