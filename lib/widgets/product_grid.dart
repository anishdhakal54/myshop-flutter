import 'package:flutter/material.dart';
import 'package:myshop/provider/products_provider.dart';
import 'package:provider/provider.dart';

import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0),
      itemBuilder: (context, index) => ProductItem(
          products[index].id, products[index].title, products[index].imageUrl),
      itemCount: products.length,
    );
  }
}
