// lib/presentation/views/signup/bloc/signup_event.dart

part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupButtonPressed extends SignupEvent {
  final String name;
  final String email;

  const SignupButtonPressed({
    required this.name,
    required this.email,
  });
}
