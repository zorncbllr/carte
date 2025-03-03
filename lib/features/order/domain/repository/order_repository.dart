import 'package:carte/features/order/domain/models/order.dart';

abstract class OrderRepository {
  Future<void> addOrder(Order newOrder);

  Future<void> updateOrder(Order order);

  Future<void> deleteOrder(Order order);

  Future<List<Order>> getOrders();
}
