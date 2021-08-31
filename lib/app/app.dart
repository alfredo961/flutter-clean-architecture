import 'package:clean_architecture/app/ui/routes/app_routes.dart';
import 'package:clean_architecture/app/ui/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App', //TODO: CAMBIAR NOMBRE DE LA APP.
      initialRoute: Routes.SPLASH,
      routes: appRoutes,
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
