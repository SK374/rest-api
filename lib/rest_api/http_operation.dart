import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http show get;
import '../model/product.dart';

Future<List<Product>> fetchProducts() async {
    final productsListUrl =
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline';
    final response = await http.get(productsListUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products.');
    }
  }