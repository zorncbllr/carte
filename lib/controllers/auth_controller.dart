import 'package:carte/models/user.dart';
import 'package:carte/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:uuid/v4.dart';

class AuthController extends ChangeNotifier {
  User? _user;
  final LoginFormController controller = LoginFormController();
  final Box<User> _userBox = Hive.box<User>('userBox');
  final Box<UuidV4> _authBox = Hive.box<UuidV4>('authBox');

  void handleLoginSubmit(
    BuildContext context,
  ) {
    bool isError = false;
    String email = controller.emailController.text;
    String password = controller.passwordController.text;

    if (email.isEmpty) {
      controller.emailController.errorText = 'Email is required.';
      isError = true;
    }

    if (password.isEmpty) {
      controller.passwordController.errorText = 'Password is required.';
      isError = true;
    }

    if (isError) {
      notifyListeners();
      return;
    }

    List<User> users = _userBox.values.toList();

    for (User user in users) {
      if (user.email == email) {
        if (user.password == password) {
          _user = user;
          _authBox.put('authenticated_userId', user.userId);
          Navigator.pushReplacementNamed(context, '/home');
        } else {
          controller.passwordController.errorText = 'Wrong credentials.';
          notifyListeners();
        }
        return;
      }
    }

    controller.emailController.errorText = 'User not found.';
    notifyListeners();
  }

  void handleUserLogout() {
    _authBox.delete('authenticated_user');
    notifyListeners();
  }

  User? get getAuthenticatedUser {
    return _user ?? _userBox.get(_authBox.get('authenticated_userId') ?? '');
  }
}
