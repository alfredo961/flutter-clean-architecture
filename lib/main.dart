import 'package:clean_architecture/app/app.dart';
import 'package:clean_architecture/app/ui/inject_dependencies.dart';
import 'package:clean_architecture/app/ui/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  runApp(ChangeNotifierProvider(
    create: (context) => SplashController(),
    child: const MyApp(),
  ));
}
