import 'package:flutter/material.dart';


class Curso extends StatelessWidget{
  @override
  build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cursos'),
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