import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color; // Specify the type of color you want

  const GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.imagePath,
    required this.itemPrice,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(
              itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                // Add more text styling properties as needed
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: color.withOpacity(0.8),
              child: Text(
                'Price: $itemPrice',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  // Add more text styling properties as needed
                ),
              ),
            ),
            // Add more widgets for additional details
          ],
        ),
      ),
    );
  }
}
