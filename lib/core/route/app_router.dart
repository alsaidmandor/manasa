
import 'package:flutter/material.dart';
import 'package:manasa/core/route/routes.dart';

import '../../Features/onboarding/ui/boarding_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      default:
        return null;
    }
  }
}
