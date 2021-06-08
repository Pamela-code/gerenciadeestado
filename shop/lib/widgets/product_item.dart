import 'package:flutter/material.dart';
import '../models/products.dart';
import '../views/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(

        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (cxt) => ProductDetailScreen(product)
                )
            );
          },
          child: Image.network(product.imageUrl,
          fit: BoxFit.cover,
          ),
        ),
       
       footer: GridTileBar(
         backgroundColor: Colors.black87,
         leading: IconButton(
           icon: Icon(Icons.favorite),
           color: Theme.of(context).accentColor,
           onPressed: (){},
         ),
         title: Text(product.title,
         textAlign: TextAlign.center,),
         trailing: IconButton(
           onPressed: (){},
           icon: Icon(Icons.shopping_cart),
           color: Theme.of(context).accentColor,
         ),
       ),
          
        
      ),
    );
  }
}