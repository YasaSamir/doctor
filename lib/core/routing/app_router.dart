import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/login/ui/login_scren.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
   Route<dynamic> generateRoute(RouteSettings settings)  {
     //this is where we define our routes
     final args = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>LoginScren(),
        );
        default:
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body:
              Center(
                child: Text('No route defined for ${settings.name}')
              ),
            ),
          );
    }
  }
}
