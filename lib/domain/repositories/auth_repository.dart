// lib/domain/repositories/auth_repository.dart

import 'package:basics/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> signUp(String name, String email, String password);
  Future<User> login(String email, String password);
}
