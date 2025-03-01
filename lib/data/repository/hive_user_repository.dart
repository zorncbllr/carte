import 'package:carte/domain/models/user.dart';
import 'package:carte/domain/repository/user_repository.dart';

class HiveUserRepository implements UserRepository {
  @override
  Future<void> createUser(User newUser) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
