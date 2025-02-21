Sales Management System
This is a simple Sales Management System implemented in Dart. The system allows you to manage products, customers, and orders. It provides basic functionalities such as adding products, customers, and orders, as well as viewing all products, customers, and orders.

Features
Product Management:

Add new products with an ID, name, and price.

View all products.

Customer Management:

Add new customers with an ID, name, phone number, and email.

View all customers.

Order Management:

Create new orders by associating them with a customer and adding order items (products with quantities).

View all orders with details including the customer, date, and total amount.

Getting Started
Prerequisites
Dart SDK installed on your machine. You can download it from here.

Running the Application
Clone the repository or download the source code.

Navigate to the project directory.

Run the application using the Dart SDK:
dart run bin/main.dart

Follow the on-screen instructions to interact with the system.

Project Structure
The project is organized into several files and directories:

bin/main.dart: The entry point of the application. It contains the main loop and user interaction logic.

lib/models/: Contains the data models and repositories.

customer.dart: Defines the Customer class.

customer_repo.dart: Defines the CustomerRepo class for managing customers.

order.dart: Defines the Order class.

order_item.dart: Defines the OrderItem class.

order_repo.dart: Defines the OrderRepo class for managing orders.

product.dart: Defines the Product class.

product_repo.dart: Defines the ProductRepo class for managing products.

lib/services/: Contains the service layer.

sales_service.dart: Defines the SalesService class which acts as a facade to interact with the repositories.

Usage
When you run the application, you will be presented with a menu:

1. Add Product
2. Add Customer
3. Add Order
4. View All Products
5. View All Customers
6. View All Orders
0. Exit
Enter Your Choice:
Add Product: Allows you to add a new product by entering its ID, name, and price.

Add Customer: Allows you to add a new customer by entering their ID, name, phone number, and email.
Add Order: Allows you to create a new order by associating it with a customer and adding order items (products with quantities).

View All Products: Displays a list of all products.

View All Customers: Displays a list of all customers.

View All Orders: Displays a list of all orders with details including the customer, date, and total amount.

Exit: Exits the application.

Example
Adding a Product
Enter Your Choice: 1
Enter Product id: 101
Enter Product name: Laptop
Enter Product price: 1200.00
Product added successfully.
Adding a Customer

Enter Your Choice: 2
Enter Customer id: 201
Enter Customer name: John Doe
Enter Customer Phone: 1234567890
Enter Customer email: john.doe@example.com
Customer added successfully.
Creating an Order

Enter Your Choice: 3
Enter Order id: 301
Enter Customer id: 201
Enter product id: 101
Enter quantity: 2
Enter product id: 0
Order created successfully.
Viewing All Orders

Enter Your Choice: 6
Order ID:301, Customer:John Doe, Date:2023-10-01 12:00:00.000, Total:2400.0
Product:Laptop, Quantity:2, Price:1200.0
Contributing
Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

