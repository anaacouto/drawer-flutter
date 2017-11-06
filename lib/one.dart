import 'package:flutter/material.dart';

class One extends StatefulWidget{

  OneState createState() => new OneState();

}

class OneState extends State<One>{

  Widget cardNoticias(){
    return new Container(
      margin: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Container(
                width: 140.0,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: new Text(
                  "titulo noticia 1 aqui titulo noticia 1 aqui",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              new Container(
                margin: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 40.0,
                      child: new Text(
                        "SSSSS",
                        style: new TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Text(
                      " | ",
                      style: new TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    new Container(
                      width: 100.0,
                      child: new Text(
                        "uma hora atras",
                        style: new TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
          new SizedBox(width: 40.0),
          new Image.asset(
            "assets/pic2.jpg",
            width: 110.0,
          ),
        ],
      ),
    );
  }

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sub Page 1"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            cardNoticias(),
            new Divider(color: Colors.grey),
            cardNoticias(),
          ],
        ),
      ),
    );
  }

}
