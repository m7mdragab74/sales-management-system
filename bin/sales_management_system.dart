import 'dart:io';

import 'models/customer.dart';
import 'models/customer_repo.dart';
import 'models/order.dart';
import 'models/order_item.dart';
import 'models/order_repo.dart';
import 'models/product.dart';
import 'models/product_repo.dart';
import 'services/sales_service.dart';

void main() {
  final productRepo = ProductRepo();
  final customerRepo = CustomerRepo();
  final orderRepo = OrderRepo();
  final salesService = SalesService(
      productRepo: productRepo,
      customerRepo: customerRepo,
      orderRepo: orderRepo);

  while (true) {
    print('1. Add Product');
    print('2. Add Customer');
    print('3. Add Order');
    print('4. View All Products');
    print('5. View All Customers');
    print('6. View All Orders');
    print('0. Exit');
    print('Enter Your Choice: ');
    final choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        print('Enter Product id: ');
        final id = int.parse(stdin.readLineSync()!);
        print('Enter Product name: ');
        final name = stdin.readLineSync()!;
        print('Enter Product price: ');
        final price = double.parse(stdin.readLineSync()!);
        final product = Product(id, name, price);
        salesService.addProduct(product);
        print('Product added successfully.\n');
        break;

      case '2':
        print('Enter Customer id: ');
        final id = int.parse(stdin.readLineSync()!);
        print('Enter Customer name: ');
        final name = stdin.readLineSync()!;
        print('Enter Customer Phone: ');
        final phone = int.parse(stdin.readLineSync()!);
        print('Enter Customer email: ');
        final email = stdin.readLineSync()!;
        final customer = Customer(id, phone, name, email);
        salesService.addCustomer(customer);
        print('Product added successfully.\n');
        break;

      case '3':
        print('Enter Order id: ');
        final id = int.parse(stdin.readLineSync()!);
        print('Enter Customer id: ');
        final customerId = int.parse(stdin.readLineSync()!);
        final customer = customerRepo
            .getAllCustomers()
            .firstWhere((c) => c.id == customerId);
        final items = <OrderItem>[];
        while (true) {
          print('Enter product id');
          final productId = int.parse(stdin.readLineSync()!);
          if (productId == 0) {
            break;
          }
          final product =
              productRepo.getAllProducts().firstWhere((p) => p.id == productId);
          print('Enter quantity: ');
          final quantity = int.parse(stdin.readLineSync()!);
          items.add(OrderItem(id, product, quantity));
        }
        final order = Order(
            id: id, customer: customer, date: DateTime.now(), items: items);
        salesService.createOrder(order);
        print('Order created successfully.\n');
        break;

      case '4':
        final products = salesService.getAllProducts();
        for (var product in products) {
          print(
              "ID:${product.id}, Name:${product.name}, Price:${product.price}");
        }
        print('');
        break;

      case '5':
        final customers = salesService.getAllCustomers();
        for (var customer in customers) {
          print(
              'ID:${customer.id}, Name:${customer.name}, Email:${customer.email}, Phone:${customer.phone}');
        }
        print('');
        break;

      case '6':
        final orders = salesService.getAllOrder();
        for (var order in orders) {
          print(
              'Order ID:${order.id}, Customer:${order.customer.name}, Date:${order.date}, Total:${order.total}');
          for (var item in order.items) {
            print(
                'Product:${item.product.name}, Quantity:${item.quantity}, Price:${item.product.price}');
          }
        }
        print('');
        break;

      case '0':
        exit(0);

      default:
        print('Invalid choice. please try again');
    }
  }
}
