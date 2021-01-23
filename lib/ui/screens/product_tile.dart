import 'package:flutter/material.dart';

Scaffold productTile(
        String name, 
        String imageLink, 
        String description, 
        String price
        ) =>
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Maybelline Products'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    )),
                if (imageLink != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.network(imageLink),
                  ),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Price: £$price',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
