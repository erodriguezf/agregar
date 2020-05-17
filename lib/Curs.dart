import 'package:flutter/material.dart';
class Curs extends StatelessWidget {
  final List<String> products;
  Curs(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
           height: 60,
         child: Text(products[index], style: TextStyle(color: Colors.deepPurple))

          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}