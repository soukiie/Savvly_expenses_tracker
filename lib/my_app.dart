import 'package:expenses_tracker/core/routing/routes.dart';
import 'package:expenses_tracker/core/routing/routing.dart';
import 'package:expenses_tracker/features/login/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  final Routing routing;
  const MyApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Savvly',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: Routes.login,
        onGenerateRoute: routing.onGenerateRoute,
      ),
    );
  }
}
