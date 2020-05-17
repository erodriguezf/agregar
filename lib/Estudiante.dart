import 'package:flutter/material.dart';
import 'Est.dart';
class Estudiante extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Estudiante> {
  int i=0;
  List<String> _products = [];
  List<String> prod2 = ['Est1','Est2','Est3','Est4','Est5'];
  String name = '';
  

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Estudiantes')),
        body: Column(children: [
        
         Expanded(child: Est(_products)),
         RaisedButton(
           onPressed: (){
            Navigator.pop(context);
          },
        child: Text('Regresar'),
         ),

        

        ]), 

        floatingActionButton: FloatingActionButton(
       tooltip: 'Increment',
        child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      name =prod2.elementAt(i).toString();
                      _products.add('$name');
                      i=i+1;
                    });
                  },
        ),
                  

      ),
    );
  }
}