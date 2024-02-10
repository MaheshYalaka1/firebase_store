import 'package:flutter/material.dart';
import 'package:realtime_database_1/modals/grocery_item.dart';

class ItemDetailsPage extends StatelessWidget {
  final GroceryItem item;

  const ItemDetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17,
            ),
            Text('Name: ${item.name}'),
            const SizedBox(
              height: 17,
            ),
            Text('Category: ${item.category.title}'),
            const SizedBox(
              height: 17,
            ),
            Text('Quantity: ${item.quantity}'),
          ],
        ),
      ),
    );
  }
}
