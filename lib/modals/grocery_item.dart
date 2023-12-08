import 'package:realtime_database_1/modals/category.dart';

class GroceryItem {
  const GroceryItem(
      {required this.id,
      required this.quantity,
      required this.category,
      required this.name});
  final String id;
  final String name;
  final int quantity;
  final Category category;
}
