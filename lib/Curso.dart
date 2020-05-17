import 'package:flutter/material.dart';
import 'Curs.dart';



class Curso extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Curso> {
  int i=0;
  List<String> _products = [];
  List<String> prod2 = ['Curso1','Curso2','Curso3','Curso4','Curso5'];
  String name = '';
  

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Cursos')),
        body: Column(children: [
        
         Expanded(child: Curs(_products)),
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

