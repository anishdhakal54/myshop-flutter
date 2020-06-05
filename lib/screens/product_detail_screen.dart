import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments
        as String; //fetching product id

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
    );
  }
}
