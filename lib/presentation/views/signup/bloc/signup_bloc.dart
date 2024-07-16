// lib/presentation/views/signup/bloc/signup_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupButtonPressed>(_onSignupButtonPressed);
  }

  void _onSignupButtonPressed(
      SignupButtonPressed event, Emitter<SignupState> emit) async {
    emit(SignupLoading());
    try {
      // Simulate a network call for Signup
      await Future.delayed(const Duration(seconds: 2));
      // Assuming Signup is always successful for this example
      emit(SignupSuccess());
    } catch (error) {
      emit(SignupFailure(error: error.toString()));
    }
  }
}
