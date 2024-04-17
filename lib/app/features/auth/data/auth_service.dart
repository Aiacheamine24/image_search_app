import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_motor_search_app/app/constants/constants.dart';

class AuthService {
  final Dio _dio;
  AuthService({required Dio dio}) : _dio = dio;

  /// Sign in with email and password and image for face recognition
  ///
  /// Throws a [DioError] if the request fails
  Future<Map<String, dynamic>> login(
      {required String email,
      required String password,
      required String imagePath}) async {
    final response = await _dio.post(
      '$apiURI/auth/login',
      data: {
        'email': email,
        'password': password,
        'face_image': await MultipartFile.fromFile(imagePath),
      },
    );
    return response.data;
  }

  Future<Map<String, dynamic>> register({
    required String username,
    required String email,
    required String password,
    required String imagePath,
  }) async {
    try {
      print(imagePath);
      FormData formData = FormData.fromMap({
        'username': username,
        'email': email,
        'password': password,
        'face_image': await MultipartFile.fromFile(imagePath,
            filename: imagePath.split('/').last),
      });

      final response = await _dio.post(
        '$apiURI/auth/register',
        data: formData,
      );

      return response.data;
    } catch (e) {
      print('Erreur lors de l\'envoi de la requête : $e');
      throw e;
    }
  }
}
