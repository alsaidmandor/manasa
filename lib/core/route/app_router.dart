
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasa/Features/forget_password/data/repository/forget_password_repository.dart';
import 'package:manasa/Features/login/data/repository/login_repository.dart';
import 'package:manasa/Features/sign-up/data/repo/signup_repository.dart';
import 'package:manasa/Features/sign-up/ui/logic/signup_cubit.dart';
import 'package:manasa/core/route/routes.dart';

import '../../Features/forget_password/ui/forget_password_screen.dart';
import '../../Features/forget_password/ui/logic/forget_password_cubit.dart';
import '../../Features/login/ui/logic/login_cubit.dart';
import '../../Features/login/ui/login_screen.dart';
import '../../Features/onboarding/ui/boarding_screen.dart';
import '../../Features/sign-up/ui/signup_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => SignupCubit(SignupRepository()),
              child: const SignupScreen()),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => LoginCubit(LoginRepository()),
              child: const LoginScreen()),
        );
      case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => ForgetPasswordCubit(ForgetPasswordRepository()),
              child: const ForgetPasswordScreen()),
        );
      default:
        return null;
    }
  }
}
