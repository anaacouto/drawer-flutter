import 'package:flutter/material.dart';
import './second.dart' as second;
import './first.dart' as first;
import './drawer.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @Override
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

  @Override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  @Override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new TestDrawer(),
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
