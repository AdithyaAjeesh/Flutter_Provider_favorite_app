import 'package:flutter/material.dart';

class FavoriteItemProvider extends ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;
  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }
}
