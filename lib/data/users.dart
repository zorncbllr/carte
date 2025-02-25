import 'package:carte/data/products.dart';
import 'package:carte/models/order.dart';
import 'package:carte/models/user.dart';

List<User> users = [
  User(
    name: 'Manuel Caballero',
    email: 'caballero@gmail.com',
    password: '123456',
    orders: [
      Order(product: products[0], quantity: 1),
      Order(product: products[1], quantity: 2),
    ],
    cardNumber: '2306 3456 2424',
    address: '21 Marquez St',
  ),
];
