import 'package:carte/features/order/data/models/hive_order.dart';
import 'package:carte/features/order/domain/models/order.dart';
import 'package:carte/features/order/domain/repository/order_repository.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveOrderRepository implements OrderRepository {
  final Box<HiveOrder> _orderBox = Hive.box<HiveOrder>('orderBox');

  @override
  Future<void> addOrder(Order newOrder) async {
    HiveOrder order = HiveOrder.toHiveObject(newOrder);

    await _orderBox.put(order.orderId, order);
  }

  @override
  Future<void> deleteOrder(Order order) async {
    await _orderBox.delete(order.orderId);
  }

  @override
  Future<List<Order>> getOrders() async {
    return _orderBox.values.toList();
  }

  @override
  Future<void> updateOrder(Order order) async {
    HiveOrder updatedOrder = HiveOrder.toHiveObject(order);

    await _orderBox.put(updatedOrder.orderId, updatedOrder);
  }
}
