import 'package:flutter/material.dart';

class Four extends StatefulWidget{

  FourState createState() => new FourState();

}

class FourState extends State<Four>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 4"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("ola 4"),
            ],
          ),
        ),
      ),
    );
  }

}
