import 'package:flutter/material.dart';

class Five extends StatefulWidget{

  FiveState createState() => new FiveState();

}

class FiveState extends State<Five>{


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 5"),
      ),
      body: new Container(
        color: Colors.grey[200],
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.all(24.0),
                child: new Text(
                  "hello 5",
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
