import 'package:carte/domain/models/user.dart';
import 'package:hive_ce/hive.dart';

class HiveUser extends User with HiveObjectMixin {
  HiveUser({
    required super.name,
    required super.email,
    required super.password,
    required super.cardNumber,
  });
}
