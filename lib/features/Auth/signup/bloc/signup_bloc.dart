import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<PhoneEvent>(_phoneEvent);
    
  }
  void _userNameEvent(UserNameEvent event, Emitter<SignUpState> emit) {
    print("Username: ${event.restaurantName}");
    emit(state.cpyWith(userName: event.restaurantName));
  }

  void _emailEvent(EmailEvent event, Emitter<SignUpState> emit) {
    print("Email: ${event.email}");
    emit(state.cpyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignUpState> emit) {
    print("Password: ${event.password}");
    emit(state.cpyWith(password: event.password));
  }
  void _phoneEvent(PhoneEvent event, Emitter<SignUpState> emit) {
    print("phone: ${event.phone}");
    emit(state.cpyWith(password: event.phone));
  }

 
}
