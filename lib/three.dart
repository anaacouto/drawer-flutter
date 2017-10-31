import 'package:flutter/material.dart';

class Three extends StatefulWidget{

  ThreeState createState() => new ThreeState();

}

class ThreeState extends State<Three>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 3"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("ola 3"),
            ],
          ),
        ),
      ),
    );
  }

}
