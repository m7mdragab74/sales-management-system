import 'customer.dart';

class CustomerRepo {
  final List<Customer> _customers = [];
  void addCustomer(Customer customer) {
    _customers.add(customer);
  }

  void removeCustomer(Customer customer) {
    _customers.remove(customer);
  }

  List<Customer> getAllCustomers() {
    return _customers;
  }
}
