import 'package:flutter/material.dart';
import 'package:myshop/provider/products_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments
        as String; //fetching product id
    final foundProduct =
        Provider.of<Products>(context).findProductById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(foundProduct.title),
      ),
    );
  }
}
