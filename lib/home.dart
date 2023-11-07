import 'package:eccomerce/product.dart';
import 'package:flutter/material.dart';

class ECommercePage extends StatelessWidget {
  // final List<Product> products;

  // ECommercePage({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Image.asset(product.image, width: 100, height: 100),
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: Icon(
                  product.isWishlist ? Icons.favorite : Icons.favorite_border,
                  color: product.isWishlist ? Colors.red : null,
                ),
                onPressed: () {
                  // Toggle the wishlist status
                  product.isWishlist = !product.isWishlist;
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
