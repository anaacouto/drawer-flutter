import 'package:flutter/material.dart';

class Five extends StatefulWidget{

  FiveState createState() => new FiveState();

}

class FiveState extends State<Five>{

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 5"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("ola 5"),
        ),
      ),
    );
  }

}
