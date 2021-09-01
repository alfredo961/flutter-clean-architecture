import 'package:clean_architecture/app/domain/repositories/authentication_repository.dart';
import 'package:clean_architecture/app/ui/inject_dependencies.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;

class SplashController extends ChangeNotifier {
  final _authRepository = getIt.get<AuthenticationRepository>();

  SplashController() {
    _init();
  }

  bool inicioSesion = false;

  void _init() async {
    final user = await _authRepository.user;

    await Future.delayed(const Duration(seconds: 3));
    if (user != null) {
      //Aquí va la lógica...

      inicioSesion = true;
    } else {
      inicioSesion = true;
    }
    notifyListeners();
  }
}
