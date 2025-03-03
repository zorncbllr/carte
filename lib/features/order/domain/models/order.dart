import 'package:carte/features/product/domain/models/product.dart';
import 'package:uuid/v4.dart';

class Order {
  UuidV4 orderId;
  int quantity;
  Product product;

  Order({
    required this.quantity,
    required this.product,
  }) : orderId = UuidV4();
}
