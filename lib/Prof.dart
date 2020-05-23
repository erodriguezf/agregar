import 'package:flutter/material.dart';
import 'detalleProfesor.dart';
class Prof extends StatelessWidget {
  final List<String> products;
  int i =0;
  String name = '';
  Prof(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          FlatButton(
           //height: 60,
          child: Text(products[index], style: TextStyle(color: Colors.deepPurple)),
          onPressed: ()=>{
           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>DetalleProf(),
                    )
           ),
          }
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