import 'package:expenses_tracker/core/networking/firebase_helper.dart';
import 'package:expenses_tracker/core/routing/routes.dart';
import 'package:expenses_tracker/features/login/logic/cubit/login_cubit.dart';
import 'package:expenses_tracker/features/login/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routing {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(FirebaseHelper()),
                  child: const LoginScreen(),
                ));
      default:
        return MaterialPageRoute(builder: (context) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No Route Found'),
      ),
    );
  }
}
