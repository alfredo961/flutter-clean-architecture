import 'package:clean_architecture/app/ui/pages/splash/splash_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:clean_architecture/app/data/repositories_implementation/authentication_repo_impl.dart';
import 'package:clean_architecture/app/domain/repositories/authentication_repository.dart';

final getIt = GetIt.instance;

void injectDependencies() {
  getIt.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationImplementation());
  getIt.registerLazySingleton<SplashController>(() => SplashController());
}
