import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/features/home/ui/home_screen.dart';
import 'package:doctor/features/login/ui/login_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/login_cubit.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../di/dependancy_injection.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    //this is where we define our routes
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScren(),
              ),
        );

        case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );

    }
  }
}
