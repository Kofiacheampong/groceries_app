import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ['Avocado', '4.00', 'lib/assets/images/avocado.png', Colors.green],
    ['Banana', '2.50', 'lib/assets/images/banana.png', Colors.yellow],
    ['Chicken', '12.50', 'lib/assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/assets/images/water.png', Colors.blue],
  ];
  get shopItems => _shopItems;
}
