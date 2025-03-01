import 'package:carte/domain/models/order.dart';
import 'package:carte/domain/repository/order_repository.dart';

class HiveOrderRepository implements OrderRepository {
  @override
  Future<void> addOrder(Order newOrder) {
    // TODO: implement addOrder
    throw UnimplementedError();
  }

  @override
  Future<void> deleteOrder(Order order) {
    // TODO: implement deleteOrder
    throw UnimplementedError();
  }

  @override
  Future<List<Order>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }

  @override
  Future<void> updateOrder(Order order) {
    // TODO: implement updateOrder
    throw UnimplementedError();
  }
}
