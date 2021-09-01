import 'package:clean_architecture/app/ui/pages/home/home_page.dart';
import 'package:clean_architecture/app/ui/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SplashController>(context);
    return Scaffold(body: Consumer<SplashController>(
      builder: (context, controller, child) {
        return provider.inicioSesion == true
            ? const HomePage()
            : const Center(child: CircularProgressIndicator());
      },
    ));
  }
}
