import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:realtime_database_1/data/catogiries.dart';
import 'package:realtime_database_1/modals/category.dart';
import 'package:realtime_database_1/modals/grocery_item.dart';
import 'package:http/http.dart' as http;

class NewItem extends StatefulWidget {
  const NewItem({super.key});
  @override
  State<NewItem> createState() => _newItemScreen();
}

class _newItemScreen extends State<NewItem> {
  final _fromkey = GlobalKey<FormState>();
  var _enterName = '';
  var _enterQuantity = 1;
  var _selectedcatogery = categories[Categories.vigetables]!;
  var _isSending = false;

  void _saveItem() async {
    if (_fromkey.currentState!.validate()) {
      _fromkey.currentState!.save();
      setState(() {
        _isSending = true;
      });
      final url = Uri.https(
          'stroredatabase-default-rtdb.firebaseio.com', 'shopping-list.json');
      final responce = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'name': _enterName,
            'quantity': _enterQuantity,
            'category': _selectedcatogery.title,
          },
        ),
      );
      final Map<String, dynamic> resData = json.decode(responce.body);

      if (!context.mounted) {
        return;
      }
      Navigator.of(context).pop(
        GroceryItem(
            id: resData['name'],
            name: _enterName,
            quantity: _enterQuantity,
            category: _selectedcatogery),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _fromkey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('name'),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50) {
                    return 'value must between 1 to 50 characters';
                  }
                  return null;
                },
                onSaved: (value) {
                  _enterName = value!;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Quantity'),
                      ),
                      keyboardType: TextInputType.number,
                      initialValue: _enterQuantity.toString(),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! <= 0) {
                          return 'Must be validate:pasitive number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enterQuantity = int.parse(value!);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                        value: _selectedcatogery,
                        items: [
                          for (final category in categories.entries)
                            DropdownMenuItem(
                              value: category.value,
                              child: Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    color: category.value.color,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(category.value.title)
                                ],
                              ),
                            )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedcatogery = value!;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: _isSending
                          ? null
                          : () {
                              _fromkey.currentState!.reset();
                            },
                      child: const Text('reset')),
                  ElevatedButton(
                      onPressed: _isSending ? null : _saveItem,
                      child: _isSending
                          ? const SizedBox(
                              height: 16,
                              width: 16,
                              child: CircularProgressIndicator(),
                            )
                          : const Text('add Item')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
