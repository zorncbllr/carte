import 'package:carte/domain/models/user.dart';
import 'package:hive_ce/hive.dart';

class HiveUser extends User with HiveObjectMixin {
  HiveUser({
    required super.name,
    required super.email,
    required super.password,
    required super.cardNumber,
  });

  static HiveUser toHiveObject(User user) {
    return HiveUser(
      name: user.name,
      email: user.email,
      password: user.password,
      cardNumber: user.cardNumber,
    );
  }
}
