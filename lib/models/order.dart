import 'package:carte/models/product.dart';
import 'package:hive_ce/hive.dart';

class Order {
  Product product;
  int quantity;

  Order({
    required this.product,
    required this.quantity,
  });
}
