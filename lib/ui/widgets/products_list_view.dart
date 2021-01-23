import 'package:flutter/material.dart';
import '../../model/product.dart';
import '../../rest_api/http_operation.dart';
import '../../ui/widgets/products_list.dart';

class ProductsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: fetchProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Product> data = snapshot.data;
          return productsList(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}