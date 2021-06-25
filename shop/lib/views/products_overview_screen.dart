

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';

class ProductsOverviewScreen extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
  final List <Product> loadedProducts = Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
      ),
      body: GridView.builder(
        itemCount: loadedProducts.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
          ), 
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i])
        ),
    );
  }
}