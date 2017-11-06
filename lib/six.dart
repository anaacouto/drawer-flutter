import 'package:flutter/material.dart';

class Six extends StatefulWidget{

  SixState createState() => new SixState();

}

class SixState extends State<Six>{

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 6"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("ola 6"),
        ),
      ),
    );
  }

}
