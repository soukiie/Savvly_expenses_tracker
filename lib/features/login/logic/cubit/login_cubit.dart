import 'package:expenses_tracker/core/networking/firebase_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final FirebaseHelper firebaseHelper;
  LoginCubit(this.firebaseHelper) : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  login() async {
    emit(LoginLoadingState());
    try {
      await firebaseHelper
          .loginUser(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          )
          .then(
            (value) => emit(LoginSuccessState()),
          );
    } catch (e) {
      emit(LoginErrorState());
    }
  }
}
