import 'package:flutter/cupertino.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  void addProducst() {
    // _items.add(value);
    notifyListeners();
  }
}
