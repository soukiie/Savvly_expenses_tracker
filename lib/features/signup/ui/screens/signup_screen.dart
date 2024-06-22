import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:expenses_tracker/core/theming/my_colors.dart';
import 'package:expenses_tracker/core/widgets/my_button.dart';
import 'package:expenses_tracker/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:expenses_tracker/features/signup/logic/cubit/signup_cubit.dart';
import 'package:expenses_tracker/features/signup/ui/widgets/signup_form_fields.dart';
import 'package:expenses_tracker/features/signup/ui/widgets/signup_listener_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.blackColor,
      appBar: AppBar(
        backgroundColor: MyColors.blackColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(70),
                  const SignupFormFields(),
                  verticalSpace(20),
                  const TermsAndConditions(),
                  verticalSpace(20),
                  MyButton(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 1.0],
                      colors: [MyColors.orangeColor, MyColors.yellowColor],
                    ),
                    onPressed: () {
                      validateThenSignup();
                    },
                    child: Text('Sign Up', style: FontHelper.font18BoldWhite),
                  ),
                  verticalSpace(20),
                  const SignupListenerWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  validateThenSignup() {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().signUp();
    }
  }
}
