import 'package:flutter/material.dart';

class GroceryItemTile extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final dynamic color; // Specify the type of color you want

  const GroceryItemTile({
    Key? key, // Use Key? instead of super.key
    required this.itemName,
    required this.imagePath,
    required this.itemPrice,
    required this.color,
  }) : super(key: key);

  @override
  _GroceryItemTileState createState() => _GroceryItemTileState();
}

class _GroceryItemTileState extends State<GroceryItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(widget.imagePath),
          // Add more widgets for itemName, itemPrice, etc.
        ],
      ),
    );
  }
}
