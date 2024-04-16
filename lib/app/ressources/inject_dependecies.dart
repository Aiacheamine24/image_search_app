import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_motor_search_app/app/routing/app_router.dart';

final getit = GetIt.instance;

Future<void> injectDependencies() async {
  // DIO
  final dio = Dio();
  getit.registerLazySingleton(() => dio);
  // GoRouter
  final router = routerApp;
  getit.registerLazySingleton(() => router);
}
