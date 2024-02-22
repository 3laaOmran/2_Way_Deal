part of 'signup_bloc.dart';

class SignUpState {
  final String userName;
  final String email;
  final String password;
  final String phone;
  const SignUpState({
    this.userName = "",
    this.email = "",
    this.password = "",
    this.phone = "",
  });

  SignUpState cpyWith(
      {String? userName, String? email, String? password,String?phone}) {
    return SignUpState(
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone??this.phone
       );
  }
}
