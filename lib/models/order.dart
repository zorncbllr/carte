import 'package:carte/models/product.dart';

class Order {
  Product product;
  int quantity;

  Order({
    required this.product,
    required this.quantity,
  });
}
