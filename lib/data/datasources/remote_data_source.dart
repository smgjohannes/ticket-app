// lib/data/datasources/remote_data_source.dart

import 'package:basics/data/models/user_model.dart';

abstract class RemoteDataSource {
  Future<UserModel> signUp(String name, String email, String password);
  Future<UserModel> login(String email, String password);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  // Simulating a remote data source. In a real app, this would be an API call.
  @override
  Future<UserModel> signUp(String name, String email, String password) async {
    // Fake delay
    await Future.delayed(Duration(seconds: 1));
    // Fake user data
    return UserModel(id: '1', name: name, email: email);
  }

  @override
  Future<UserModel> login(String email, String password) async {
    // Fake delay
    await Future.delayed(Duration(seconds: 1));
    // Fake user data
    return UserModel(id: '1', name: 'Test User', email: email);
  }
}
