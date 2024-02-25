import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:two_way_deal/shared/bloc_observer.dart';
import 'package:two_way_deal/shared/styles/themes.dart';

import 'modules/seller_details/confirm_account/confirm_account.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: ConfirmAccount(),
    );
  }
}
