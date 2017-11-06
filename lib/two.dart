import 'package:flutter/material.dart';

class Two extends StatefulWidget{

  TwoState createState() => new TwoState();

}

class TwoState extends State<Two>{

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 2"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Text("ola 2"),
            ],
          ),
        ),
      ),
    );
  }

}
