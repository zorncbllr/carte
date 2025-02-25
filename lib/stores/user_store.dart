import 'package:carte/data/users.dart';
import 'package:carte/models/user.dart';
import 'package:flutter/material.dart';

class UserStore extends ChangeNotifier {
  User? _user;

  void setCurrentUser(User user) {
    _user = user;
    notifyListeners();
  }

  User? get currentUser => _user;

  void removeUser() {
    _user = null;
  }

  List<User> get getUsers => users;
}
