import 'order.dart';

class OrderRepo {
  final List<Order> _orders = [];
  void addOrder(Order order) {
    _orders.add(order);
  }

  void removeOrder(Order order) {
    _orders.remove(order);
  }

  List<Order> getAllOrders() {
    return _orders;
  }
}
