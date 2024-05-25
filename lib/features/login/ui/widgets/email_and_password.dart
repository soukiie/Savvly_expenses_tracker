import 'package:expenses_tracker/core/helpers/spacing.dart';
import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:expenses_tracker/core/widgets/my_text_form_field.dart';
import 'package:expenses_tracker/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
