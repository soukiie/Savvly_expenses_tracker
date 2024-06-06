import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:expenses_tracker/core/theming/my_colors.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool isObscure;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const MyTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.isObscure,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isObscure,
      style: FontHelper.font18GreyW300,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: FontHelper.font18GreyW300,
        filled: true,
        fillColor: MyColors.greyColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
