import '../models/customer.dart';
import '../models/customer_repo.dart';
import '../models/order.dart';
import '../models/order_repo.dart';
import '../models/product.dart';
import '../models/product_repo.dart';

class SalesService {
  final ProductRepo productRepo;
  final CustomerRepo customerRepo;
  final OrderRepo orderRepo;

  SalesService({
    required this.productRepo,
    required this.customerRepo,
    required this.orderRepo,
  });
  void addProduct(Product product) {
    productRepo.addProduct(product);
  }

  void addCustomer(Customer customer) {
    customerRepo.addCustomer(customer);
  }

  void createOrder(Order order) {
    orderRepo.addOrder(order);
  }

  List<Product> getAllProducts() {
    return productRepo.getAllProducts();
  }

  List<Customer> getAllCustomers() {
    return customerRepo.getAllCustomers();
  }

  List<Order> getAllOrder() {
    return orderRepo.getAllOrders();
  }
}
