import 'package:flutter/material.dart';
class Estudiante extends StatelessWidget{
  @override
  build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Estudiantes'),
      ),
    body: new Center(
        child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
        child: Text('Regresar'),

        ),
            ],

        ),



      
      ),
    );
}
}