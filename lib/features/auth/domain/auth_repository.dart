// ignore: unused_import
import 'package:initial_setup/core/services/api_service.dart';
import 'package:logger/logger.dart';

class AuthRepository {
  Future<void> signIn(String email, String password) async {
    try {
      // final response = await ApiService.post(
      //   '/signin',
      //   data: {'email': email, 'password': password},
      // );

      Logger().i('User signed in: $email with password: $password');
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  Future<void> signUp(String name, String email, String password) async {
    try {
      // final response = await ApiService.post(
      //   '/signup',
      //   data: {'email': email, 'password': password, 'name': name},
      // );

      Logger()
          .i('User signed up: $email with name: $name and password: $password');
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }
}
