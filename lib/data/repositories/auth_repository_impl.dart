// lib/data/repositories/auth_repository_impl.dart

import 'package:basics/data/datasources/remote_data_source.dart';
import 'package:basics/domain/entities/user.dart';
import 'package:basics/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> signUp(String name, String email, String password) async {
    return remoteDataSource.signUp(name, email, password);
  }

  @override
  Future<User> login(String email, String password) async {
    return remoteDataSource.login(email, password);
  }
}
