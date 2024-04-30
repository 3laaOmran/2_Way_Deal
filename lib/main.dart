import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_way_deal/modules/customer/cubit/cubit.dart';
import 'package:two_way_deal/shared/bloc_observer.dart';
import 'package:two_way_deal/shared/network/remote/dio_helper.dart';
import 'package:two_way_deal/shared/styles/themes.dart';

import 'layout/customer_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => CustomerCubit()..getProducts()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        themeMode: ThemeMode.light,
        home: const CustomerLayoutScreen(),
      ),
    );
  }
}
