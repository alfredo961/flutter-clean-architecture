import 'package:clean_architecture/app/domain/models/user_model.dart';

abstract class AuthenticationRepository {
  Future<User?> get user;
}
