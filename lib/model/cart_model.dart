import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ['Avocado', '4.00', 'lib/assets/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'lib/assets/images/banana.png', Colors.yellow],
    ['Chicken', '12.50', 'lib/assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/assets/images/water.png', Colors.blue],
  ];
  List _cartItems = [];

  List get cartItems => _cartItems;
  List get shopItems => _shopItems;

  // Add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);

    // Notify listeners that the cart has been updated
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);

    // Notify listeners that the cart has been updated
    notifyListeners();
  }

  // Calculate total price as a string
  String calculateTotalPrice() {
    double total = 0.0;
    for (var item in _cartItems) {
      total += double.parse(item[1]);
    }
    return total
        .toStringAsFixed(2); // Convert double to string with 2 decimal places
  }
}
