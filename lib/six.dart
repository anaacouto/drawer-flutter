import 'package:flutter/material.dart';

class Six extends StatefulWidget{

  SixState createState() => new SixState();

}

class SixState extends State<Six>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 6"),
      ),
      body: new Container(
        color: Colors.grey[200],
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.all(24.0),
                child: new Text(
                  "hello 6",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
