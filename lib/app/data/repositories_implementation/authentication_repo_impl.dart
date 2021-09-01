import 'package:clean_architecture/app/domain/models/user_model.dart';
import 'package:clean_architecture/app/domain/repositories/authentication_repository.dart';

class AuthenticationImplementation implements AuthenticationRepository {
  @override
  Future<User?> get user async {
    //Aquí irá la lógica para que realice la petición.
    return null;
  }
}
