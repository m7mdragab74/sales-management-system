import 'product.dart';

class OrderItem {
  final int id;
  final Product product;
  final int quantity;

  OrderItem(
    this.id,
    this.product,
    this.quantity,
  );
}
