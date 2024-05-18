import 'package:expenses_tracker/core/networking/firebase_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final FirebaseHelper firebaseHelper;
  LoginCubit(this.firebaseHelper) : super(LoginInitial());
  login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      firebaseHelper.loginUser(email: email, password: password).then(
            (value) => emit(LoginSuccessState()),
          );
    } catch (e) {
      emit(LoginErrorState());
    }
  }
}
