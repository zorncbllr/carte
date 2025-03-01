import 'package:carte/models/user.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class UserController extends ChangeNotifier {
  final Box<User> _userBox = Hive.box<User>('userBox');

  List<User> get getUsers => _userBox.values.toList();

  void createUSer(User user) async {
    await _userBox.put(user.userId, user);
    notifyListeners();
  }

  void updateUser(User user) async {
    await user.save();
    notifyListeners();
  }

  void deleteUser(User user) async {
    await user.delete();
    notifyListeners();
  }
}
