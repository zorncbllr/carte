import 'package:carte/features/user/domain/models/user.dart';

abstract class UserRepository {
  Future<void> createUser(User newUser);

  Future<void> updateUser(User user);

  Future<void> deleteUser(User user);

  Future<List<User>> getUsers();
}
