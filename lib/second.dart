import 'package:flutter/material.dart';
import './one.dart' as one;
import './two.dart' as two;
import './three.dart' as three;
import './four.dart' as four;
import './first.dart' as first;
import './main.dart' as main;

class Second extends StatelessWidget{

  @override
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

  Widget rowCardOne(){
    return new Row(
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.all(14.0),
          width: 150.0,
          height: 100.0,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.adb),
                  tooltip: 'ONE',
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed("/one");
                    });
                  }
                ),
              ],
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.all(14.0),
          width: 150.0,
          height: 100.0,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.adjust),
                  tooltip: 'TWO',
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed("/two");
                    });
                  }
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget rowCardTwo(){
    return new Row(
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.all(14.0),
          width: 150.0,
          height: 100.0,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.alarm),
                  tooltip: 'THREE',
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed("/three");
                    });
                  }
                ),
              ],
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.all(14.0),
          width: 150.0,
          height: 100.0,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.all_inclusive),
                  tooltip: 'FOUR',
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed("/four");
                    });
                  }
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      drawer: drawer(),
      appBar: new AppBar(
        title: new Text("Page Two"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            rowCardOne(),
            rowCardTwo(),
          ],
        ),
      ),
    );
  }

}
