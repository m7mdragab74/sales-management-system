import 'customer.dart';
import 'order_item.dart';

class Order {
  final int id;
  final Customer customer;
  final DateTime date;
  final List<OrderItem> items;

  Order({
    required this.id,
    required this.customer,
    required this.date,
    required this.items,
  });

  double get total {
    return items.fold(
      0,
      (sum, item) => sum + (item.product.price * item.quantity),
    );
  }
}
