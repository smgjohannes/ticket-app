// lib/domain/usecases/login_usecase.dart

import 'package:basics/domain/entities/user.dart';
import 'package:basics/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> call(String email, String password) {
    return repository.login(email, password);
  }
}
