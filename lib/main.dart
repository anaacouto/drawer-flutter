import 'package:flutter/material.dart';
import './second.dart' as second;
import './first.dart' as first;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Drawer'),
      routes: <String, WidgetBuilder>{
        '/second': (BuildContext context) => new second.Second(),
        '/first': (BuildContext context) => new first.First(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                    child: new Text("First"),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/first');
                    },
                  ),
                  new FlatButton(
                    child: new Text("Second"),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/second');
                    }
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: drawer(),
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Center(
          child: new ListView(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.all(16.0),
                height: 220.0,
                child: new Card(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("/first");
                          });
                        },
                        child: new Icon(Icons.alarm),
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                margin: const EdgeInsets.all(16.0),
                height: 220.0,
                child: new Card(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("/second");
                          });
                        },
                        child: new Icon(Icons.add),
                      ),
                    ],
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
