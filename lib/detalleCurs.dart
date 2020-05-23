import 'package:flutter/material.dart';










 class DetalleCurs extends StatelessWidget {
  @override
   build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Detalles'),
      ),
      body: new Center(
        child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Container(
             margin: const EdgeInsets.all(10.0),  // exterior
                    padding: const EdgeInsets.all(10.0),  // interior
                    alignment: Alignment.center,
                    child: new Text("CALCULATING VIRTUAL PROTOCOL", style: new TextStyle(fontSize: 20.0)),
          ),

          RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
        child: Text('salir'),

        ),
            ],

        ),



      
      ),
    );
  }
}