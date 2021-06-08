import 'package:flutter/material.dart';
import '../models/products.dart';

class ProductDetailScreen extends StatelessWidget {
  
  final Product product;
  ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar (
        title: Text(product.title),
      ),

    );
  }
}