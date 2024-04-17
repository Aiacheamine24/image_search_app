import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_motor_search_app/app/features/auth/data/auth_repository.dart';
import 'package:image_motor_search_app/app/features/auth/data/auth_service.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepositoryImpl _authRepository =
      AuthRepositoryImpl(authService: AuthService(dio: Dio()));

  AuthCubit() : super(const AuthState());

  Future<void> changeWidget({required String widgetName}) async {
    emit(state.copyWith(selectedWidget: widgetName));
  }

  /// Login with email and password and image for face recognition
  /// Return a map with the user data and the token
  /// If the login is not successful, we catch the error and return it
  Future<void> login({
    required String email,
    required String password,
    required String imagePath,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await _authRepository.signIn(
          email: email, password: password, imagePath: imagePath);
      print(result);
      emit(state.copyWith(isLoading: false, isSuccessful: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  /// Register with email and password and image for face recognition
  /// Return a map with the user data and the token
  /// If the register is not successful, we catch the error and return it
  Future<void> register({
    required String username,
    required String email,
    required String password,
    required String imagePath,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await _authRepository.signUp(
          username: username,
          email: email,
          password: password,
          imagePath: imagePath);
      print(result);
      emit(state.copyWith(isLoading: false, isSuccessful: true));
    } catch (e) {
      print('here is the result of the error');
      print(e);
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
