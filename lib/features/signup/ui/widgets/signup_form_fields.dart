import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:expenses_tracker/core/widgets/my_text_form_field.dart';
import 'package:expenses_tracker/features/signup/logic/cubit/signup_cubit.dart';
// import 'package:expenses_tracker/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupFormFields extends StatefulWidget {
  const SignupFormFields({
    super.key,
  });

  @override
  State<SignupFormFields> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<SignupFormFields> {
  bool isObscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController passwordConfirmationController;

  @override
  void initState() {
    super.initState();
    nameController = context.read<SignupCubit>().nameController;
    emailController = context.read<SignupCubit>().emailController;
    passwordController = context.read<SignupCubit>().passwordController;
    passwordConfirmationController =
        context.read<SignupCubit>().passwordConfirmationController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome To Savvly!',
            style: FontHelper.font28SemiBoldWhite,
          ),
          verticalSpace(30),
          Text(
            'Name',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            controller: nameController,
            isObscure: false,
            hintText: 'Enter your name',
            keyboardType: TextInputType.name,
          ),
          verticalSpace(20),
          Text(
            'Email',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            controller: emailController,
            isObscure: false,
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(20),
          Text('Password', style: FontHelper.font18BoldWhite),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            controller: passwordController,
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
          verticalSpace(20),
          Text(
            'Password Confirmation',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Re-enter your Password';
              } else if (passwordConfirmationController.text.trim() !=
                  passwordController.text.trim()) {
                return 'Passwords do not match';
              }
              return null;
            },
            controller: passwordConfirmationController,
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
            hintText: 'Re-enter your password',
          ),
        ],
      ),
    );
  }
}
