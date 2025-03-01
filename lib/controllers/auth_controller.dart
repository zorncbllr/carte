import 'package:carte/data/products.dart';
import 'package:carte/models/order.dart';
import 'package:carte/models/user.dart';
import 'package:carte/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class AuthController extends ChangeNotifier {
  User? _user;
  final Box<User> _userBox = Hive.box<User>('userBox');

  void handleLoginSubmit(
    BuildContext context,
    InputEditingController emailController,
    InputEditingController passwordController,
  ) {
    bool isError = false;

    if (emailController.text.isEmpty) {
      emailController.errorText = 'Email is required.';
      isError = true;
    }

    if (passwordController.text.isEmpty) {
      passwordController.errorText = 'Password is required.';
      isError = true;
    }

    if (isError) {
      notifyListeners();
      return;
    }

    List<User> users = _userBox.values.toList();

    for (User user in users) {
      if (user.email == emailController.text) {
        if (user.password == passwordController.text) {
          _user = user;
          _userBox.put('authenticated_user', user);
          Navigator.pushReplacementNamed(context, '/home');
        } else {
          passwordController.errorText = 'Wrong credentials.';
          notifyListeners();
        }
        return;
      }
    }

    emailController.errorText = 'User not found.';
    notifyListeners();
  }

  void handleUserLogout() {
    _userBox.delete('authenticated_user');
    notifyListeners();
  }

  User? get getAuthenticatedUser => _user;
}
