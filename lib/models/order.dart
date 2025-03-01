import 'package:carte/models/product.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:uuid/v4.dart';

class Order extends HiveObject {
  Order({
    required this.product,
    required this.quantity,
  }) {
    orderId = UuidV4();
  }

  Product product;
  int quantity;
  late UuidV4 orderId;
}
