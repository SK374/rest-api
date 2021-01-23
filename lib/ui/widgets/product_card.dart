import 'package:flutter/material.dart';

Card productItem(
  String name,
  String imageLink,
  String description,
  String price,
) =>
    Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                )),
            SizedBox(height: 16),
            if (imageLink != null) Image.network(imageLink),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '£$price',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
