import 'package:expenses_tracker/core/routing/routes.dart';
import 'package:expenses_tracker/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupListenerWidget extends StatelessWidget {
  const SignupListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
        listenWhen: (previous, current) =>
            current is SignupSuccessState ||
            current is SignupLoadingState ||
            current is SignupErrorState,
        listener: (context, state) {
          if (state is SignupLoadingState) {
            showDialog(
                context: context,
                builder: (context) => const Center(
                      child: CircularProgressIndicator(),
                    ));
          } else if (state is SignupErrorState) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Error Signning Up'),
              ),
            );
          } else {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, Routes.home);
          }
        },
        child: const SizedBox.shrink());
  }
}
