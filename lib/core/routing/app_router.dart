
import 'package:flutter/material.dart';
import 'package:two_way_deal/features/login/login_screen.dart';
import 'routes.dart';
import '../../features/onboarding_screens/onboarding.dart';

class AppRouter {
  Route? generateRoure(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      // default:
      //   return MaterialPageRoute(
      //       builder: (_) => Scaffold(
      //             body: Center(
      //               child: Text('No route for ${settings.name}'),
      //             ),
      //           ));
    }
  }
}
