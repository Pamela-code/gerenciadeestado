import 'package:flutter/material.dart';
import 'package:shop/widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Loja"),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (int selectedValue){
              print(selectedValue);
            },
            itemBuilder: (_) => [
            PopupMenuItem(
              child: Text('Somente Favoritos'),
            value: 0,
            ),
            PopupMenuItem(
              child: Text('Todos'),
            value: 1,
            )

          ])
        ],
      ),
      body: ProductGrid(),
    );
  }
}

