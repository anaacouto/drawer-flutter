import 'package:flutter/material.dart';

class One extends StatefulWidget{

  OneState createState() => new OneState();

}

class OneState extends State<One>{

    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Sub Page 1"),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Text("ola"),
            ],
          ),
        ),
      );
    }

}
