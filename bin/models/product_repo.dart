import 'product.dart';

class ProductRepo {
  final List<Product> _products = [];
  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  List<Product> getAllProducts() {
    return _products;
  }
}
