import 'package:carte/features/user/data/models/hive_user.dart';
import 'package:carte/features/user/domain/models/user.dart';
import 'package:carte/features/user/domain/repository/user_repository.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveUserRepository implements UserRepository {
  final Box<HiveUser> _userBox = Hive.box<HiveUser>('userBox');

  @override
  Future<void> createUser(User newUser) async {
    HiveUser user = HiveUser.toHiveObject(newUser);

    await _userBox.put(user.userId, user);
  }

  @override
  Future<void> deleteUser(User user) async {
    await _userBox.delete(user.userId);
  }

  @override
  Future<List<User>> getUsers() async {
    return _userBox.values.toList();
  }

  @override
  Future<void> updateUser(User user) async {
    HiveUser updatedUser = HiveUser.toHiveObject(user);

    await _userBox.put(updatedUser.userId, updatedUser);
  }
}
