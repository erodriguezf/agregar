import 'package:escuela_nueva/Prof.dart';
import 'package:flutter/material.dart';
class Profesor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Profesor> {
  int i=0;
  List<String> _products = [];
  List<String> prod2 = ['Prof1','Prof2','Prof3','Pro4','Prof5'];
  String name = '';
  

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Profesores')),
        body: Column(children: [
        
         Expanded(child: Prof(_products)),
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