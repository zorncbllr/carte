import 'package:uuid/v4.dart';

class User {
  UuidV4 userId;
  String name, email, password, cardNumber;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.cardNumber,
  }) : userId = UuidV4();
}
