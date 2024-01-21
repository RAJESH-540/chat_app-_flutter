part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}
 class SignUpEventEmail extends SignUpEvent{
  final String email;
  final String password;
  SignUpEventEmail(this.email, this.password);
}
