import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:two_way_deal/core/routing/app_router.dart';

import 'core/routing/routes.dart';

class TwoWayDealApp extends StatelessWidget {
  final AppRouter appRouter;
  const TwoWayDealApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingScreen,
        theme: ThemeData(

          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouter.generateRoure,
      ),
    );
  }
}
