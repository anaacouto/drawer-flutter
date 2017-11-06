import 'package:flutter/material.dart';
import './one.dart' as one;
import './two.dart' as two;
import './three.dart' as three;
import './four.dart' as four;
import './first.dart' as first;
import './main.dart' as main;

class Second extends StatelessWidget{

  @Override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new SecondPage(),
      routes: <String, WidgetBuilder>{
        "/one": (BuildContext context) => new one.One(),
        "/two": (BuildContext context) => new two.Two(),
        "/three": (BuildContext context) => new three.Three(),
        "/four": (BuildContext context) => new four.Four(),
        "/main": (BuildContext context) => new main.MyApp(),
        "/first": (BuildContext context) => new first.First(),
      }
    );
  }

}

class SecondPage extends StatefulWidget{

  SecondPageState createState() => new SecondPageState();

}

class SecondPageState extends State<SecondPage>{

  bool status = false;

  void drawer(){
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(height: 200.0, color: Colors.blue),
          new Container(
            margin: const EdgeInsets.all(8.0),
            child: new Column(
              children: <Widget>[
                new FlatButton(
                  child: new Text("Main"),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                ),
                new FlatButton(
                  child: new Text("First"),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/first');
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget columnCard(BuildContext context){
    return new Container(
      margin: const EdgeInsets.all(16.0),
      width: 500.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Image.asset('assets/pic1.jpg'),
            new Container(
              margin: const EdgeInsets.all(8.0),
              child: new Text(
                "Title from notice 1 here",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(8.0),
              child: new Text(
                "Text content from notice 1 here Text content from notice 1 here Text content from notice 1 here Text content from notice 1 here",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            new Row(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.all(8.0),
                  child: new Text(
                    "TAG | time",
                    style: new TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                new SizedBox(width: 110.0),
                new Container(
                  margin: const EdgeInsets.all(8.0),
                  child: new FlatButton(
                    child: new Text(
                      "READ MORE",
                      style: new TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () { Navigator.of(context).pushNamed('/one');}
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      drawer: drawer(),
      appBar: new AppBar(
        title: new Text("Page Two"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            columnCard(context),
          ],
        ),
      ),
    );
  }

}
