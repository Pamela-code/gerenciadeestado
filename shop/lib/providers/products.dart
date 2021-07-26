import 'package:flutter/material.dart';
import '../models/products.dart';
import '../data/dummy_data.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  bool _showFavoriteOnly = false;

  List<Product> get items {
    if (_showFavoriteOnly){
    return _items.where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  } 
  void showFavoriteOnly(){
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll(){
    _showFavoriteOnly = false;
    notifyListeners();

  }

  void addProduct(Product product) {
    items.add(product);
    notifyListeners();
  }
}
