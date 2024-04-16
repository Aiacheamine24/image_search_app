import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/app.dart';
import 'package:image_motor_search_app/app/ressources/inject_dependecies.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  setPathUrlStrategy();
  runApp(const MyApp());
}
