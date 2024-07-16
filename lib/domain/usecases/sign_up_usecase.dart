// lib/domain/usecases/sign_up_usecase.dart

import 'package:basics/domain/entities/user.dart';
import 'package:basics/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<User> call(String name, String email, String password) {
    return repository.signUp(name, email, password);
  }
}
