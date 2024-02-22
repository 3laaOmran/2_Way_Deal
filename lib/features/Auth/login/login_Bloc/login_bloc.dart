
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }
  
  void _emailEvent(EmailEvent event, Emitter<LoginState> emit) {
    emit(state.cpyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<LoginState> emit) {
    emit(state.cpyWith(password: event.password));
  }
}
