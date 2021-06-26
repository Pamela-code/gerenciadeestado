import 'package:flutter/material.dart';
import '../models/products.dart';
import '../data/dummy_data.dart';


class Products with ChangeNotifier {

List<Product> _items = DUMMY_PRODUCTS;

List<Product> get items => [..._items];

void addProduct (Product product) {
items.add(product);
notifyListeners();

}

}