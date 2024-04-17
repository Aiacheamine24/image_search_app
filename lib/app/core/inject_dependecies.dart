import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

final getit = GetIt.instance;

Future<void> injectDependencies() async {
  _initService();
}

void _initService() {
  // Image Picker
  getit
    ..registerLazySingleton<ImagePicker>(() => ImagePicker())

    // Dio
    ..registerLazySingleton<Dio>(() => Dio());
}
