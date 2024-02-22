import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:two_way_deal/features/Auth/login/login_Bloc/login_bloc.dart';
import 'package:two_way_deal/features/Auth/signup/bloc/signup_bloc.dart';

class AppBlocProviders {
  static get allblocProviders => [
        /*
          put welcome bloc here 3laaa
        */


        BlocProvider(
          lazy: false,
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => SignUpBloc(),
        ),
      ];
}
