import 'package:flutter/material.dart';
import 'package:two_way_deal/core/routing/routes.dart';
import 'package:two_way_deal/features/Auth/login/login_screen.dart';
import 'package:two_way_deal/features/Auth/signup/signup_screen.dart';
import 'package:two_way_deal/features/onboarding_screens/choose_account_type.dart';
import 'package:two_way_deal/features/onboarding_screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoure(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.chooseAccounttypeScreen:
        return MaterialPageRoute(builder: (_) => const ChooseAccountType());
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
