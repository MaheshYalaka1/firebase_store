import 'package:flutter/material.dart';
import 'package:realtime_database_1/modals/category.dart';

const categories = {
  Categories.vigetables: Category(
    'vigetables',
    Color.fromARGB(255, 0, 255, 128),
  ),
  Categories.fruit: Category(
    'fruit',
    Color.fromARGB(25, 145, 255, 18),
  ),
  Categories.meat: Category(
    'meat',
    Color.fromARGB(255, 225, 102, 0),
  ),
  Categories.dairy: Category(
    'dairy',
    Color.fromARGB(255, 0, 208, 225),
  ),
  Categories.carbs: Category(
    'carbs',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.sweet: Category(
    'sweet',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.spices: Category(
    'spices',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.conveniance: Category(
    'conveniance',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.hygine: Category(
    'hygine',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.others: Category(
    'others',
    Color.fromARGB(112, 256, 123, 98),
  ),
};
