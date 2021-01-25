import 'package:flutter/material.dart';
import 'product_card.dart';
import '../../ui/screens/product_tile.dart';

ListView productsList(data) {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => productTile(
                  data[index].name,
                  data[index].imageLink,
                  data[index].description,
                  data[index].price,
                ),
              ),
            ),
            child: productItem(
              data[index].name,
              data[index].imageLink,
              data[index].description,
              data[index].price,
            ),
          ),
        );
      });
}