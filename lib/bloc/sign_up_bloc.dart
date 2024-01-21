import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async*{
      if(event is SignUpEventEmail){
         emit(SignUpSuccess());
       yield SignUpInitial();
      }


    });
  }
   void signUp(String email, String password){}
}
