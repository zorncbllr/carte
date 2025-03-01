import 'package:carte/models/order.dart';
import 'package:hive_ce/hive.dart';
import 'package:uuid/v4.dart';

class User extends HiveObject {
  User({
    required this.name,
    required this.email,
    required this.password,
    required this.orders,
    required this.cardNumber,
    required this.address,
  }) {
    userId = UuidV4();
  }

  late UuidV4 userId;
  String name, email, password, cardNumber, address;
  List<Order> orders;
}
