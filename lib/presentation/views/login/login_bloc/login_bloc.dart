import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      // Simulate a network call for login
      await Future.delayed(const Duration(seconds: 2));
      // Assuming login is always successful for this example
      emit(LoginSuccess());
    } catch (error) {
      emit(LoginFailure(error: error.toString()));
    }
  }
}
