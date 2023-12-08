import 'package:flutter/material.dart';

enum Categories {
  vigetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweet,
  spices,
  conveniance,
  hygine,
  others,
}

class Category {
  const Category(this.title, this.color);
  final String title;
  final Color color;
}
