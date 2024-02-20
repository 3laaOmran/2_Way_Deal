
import 'package:flutter/material.dart';
import 'package:two_way_deal/core/routing/routes.dart';
import 'package:two_way_deal/features/onboarding_screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoure(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route for ${settings.name}'),
                  ),
                ));
    }
  }
}
