import 'package:flutter/material.dart';

class GroceryItemTile extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final color;

  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPath,
      required this.itemPrice,
      required this.color});

  @override
  State<GroceryItemTile> createState() => _GroceryItemTileState();
}

class _GroceryItemTileState extends State<GroceryItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
