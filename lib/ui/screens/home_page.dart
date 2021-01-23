import 'package:flutter/material.dart';
import '../widgets/products_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Maybelline Products'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              child: Form(
                child: TextFormField(
                  cursorColor: Colors.blueGrey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    ),
                    hintText: 'Enter Search',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ProductsListView(),
            ),
          ],
        ),
      ),
    );
  }
}