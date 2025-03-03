import 'package:carte/domain/models/order.dart';
import 'package:hive_ce/hive.dart';

class HiveOrder extends Order with HiveObjectMixin {
  HiveOrder({
    required super.quantity,
    required super.product,
  });

  static HiveOrder toHiveObject(Order order) {
    return HiveOrder(
      quantity: order.quantity,
      product: order.product,
    );
  }
}
