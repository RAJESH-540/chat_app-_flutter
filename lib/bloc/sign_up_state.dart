part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpSuccess extends SignUpState{}
class SignUpError extends SignUpState{
   final String error;
   SignUpError(this.error);
}
