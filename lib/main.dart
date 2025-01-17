import 'package:flutter/material.dart';
import 'package:recipe_app/app/app.dart';
import 'package:recipe_app/app/di/di.dart';
import 'package:recipe_app/core/network/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService().init();
  await initDependencies();

  runApp(
    const MyApp(),
  );
}
