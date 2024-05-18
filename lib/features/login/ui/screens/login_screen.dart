import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:expenses_tracker/core/theming/my_colors.dart';
import 'package:expenses_tracker/core/widgets/my_button.dart';
import 'package:expenses_tracker/core/widgets/my_text_form_field.dart';
import 'package:expenses_tracker/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:expenses_tracker/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(150),
                Text(
                  'Welcome Back!',
                  style: FontHelper.font28SemiBoldWhite,
                ),
                verticalSpace(30),
                Text(
                  'Email',
                  style: FontHelper.font18BoldWhite,
                ),
                verticalSpace(10),
                const MyTextFormField(
                  hintText: 'Enter your email',
                  isObscure: false,
                ),
                verticalSpace(20),
                Text('Password', style: FontHelper.font18BoldWhite),
                verticalSpace(10),
                MyTextFormField(
                  isObscure: isObscure,
                  suffixIcon: IconButton(
                      icon: isObscure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      }),
                  hintText: 'Enter your password',
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forget Password? ',
                      style: FontHelper.font18BoldWhite),
                ),
                verticalSpace(50),
                MyButton(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.0, 1.0],
                    colors: [MyColors.orangeColor, MyColors.yellowColor],
                  ),
                  onPressed: () {},
                  child: Text('Login', style: FontHelper.font18BoldWhite),
                ),
                verticalSpace(20),
                const TermsAndConditions(),
                verticalSpace(10),
                const DontHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
