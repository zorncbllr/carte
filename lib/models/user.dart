import 'package:carte/models/order.dart';
import 'package:hive_ce/hive.dart';

class User extends HiveObject {
  User({
    required this.name,
    required this.email,
    required this.password,
    required this.orders,
  });

  String name, email, password;
  List<Order> orders;
}
