part of 'signup_bloc.dart';

@immutable
sealed class SignUpEvent {
  const SignUpEvent();
}

class UserNameEvent extends SignUpEvent {
  final String restaurantName;
  const UserNameEvent(this.restaurantName);
}

class EmailEvent extends SignUpEvent {
  final String email;
  const EmailEvent(this.email);
}

class PasswordEvent extends SignUpEvent {
  final String password;
  const PasswordEvent(this.password);
}
class PhoneEvent extends SignUpEvent {
  final String phone;
  const PhoneEvent(this.phone);
}

