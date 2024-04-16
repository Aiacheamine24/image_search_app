import 'package:image_motor_search_app/app/features/auth/data/auth_service.dart';

abstract interface class AuthRepository {
  /// Sign in with email and password and image for face recognition
  Future<Map<String, dynamic>> signIn({
    required String email,
    required String password,
    required String imagePath,
  });
  Future<Map<String, dynamic>> signUp({
    required String username,
    required String email,
    required String password,
    required String imagePath,
  });
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthService _authService;

  AuthRepositoryImpl({required AuthService authService})
      : _authService = authService;

  @override
  Future<Map<String, dynamic>> signIn(
          {required String email,
          required String password,
          required String imagePath}) =>
      _authService.login(
        email: email,
        password: password,
        imagePath: imagePath,
      );

  @override
  Future<Map<String, dynamic>> signUp(
          {required String username,
          required String email,
          required String password,
          required String imagePath}) =>
      _authService.register(
        username: username,
        email: email,
        password: password,
        imagePath: imagePath,
      );
}
