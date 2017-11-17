import 'package:flutter/material.dart';
import './second.dart' as second;
import './main.dart' as main;
import './one.dart' as one;
import './two.dart' as two;
import './three.dart' as three;
import './four.dart' as four;
import './five.dart' as five;
import './six.dart' as six;
import './drawer.dart';

class First extends StatelessWidget{

  @Override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new FirstPage(),
      routes: <String, WidgetBuilder>{
        '/second': (BuildContext context) => new second.Second(),
        '/main': (BuildContext context) => new main.MyApp(),
        '/on1': (BuildContext context) => new one.One(),
        '/on2': (BuildContext context) => new two.Two(),
        '/on3': (BuildContext context) => new three.Three(),
        '/on4': (BuildContext context) => new four.Four(),
        '/on5': (BuildContext context) => new five.Five(),
        '/on6': (BuildContext context) => new six.Six()
      }
    );
  }

}

class FirstPage extends StatefulWidget{

  FirstState createState() => new FirstState();

}

List<Container> _buildGrid(int count, BuildContext context){
  List<Container> containers = new List<Container>.generate(
    count,
    (int index) => new Container(
      child: new FlatButton(
        child: new Image.asset('assets/pic${index+1}.jpg'),
        onPressed: () { Navigator.of(context).pushNamed("/on${index+1}"); }
      ),
    ),
  );
  return containers;
}

Widget buildGrid(BuildContext context) {
  return new GridView.extent(
    maxCrossAxisExtent: 150.0,
    padding: const EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGrid(6, context)
  );
}

class FirstState extends State<FirstPage>{

  @Override
  Widget build(BuildContext context){
    return new Scaffold(
      drawer: new TestDrawer(),
      appBar: new AppBar(
        title: new Text("First Page"),
      ),
      body: new Container(
        child: new Center(
          child: buildGrid(context),
        ),
      ),
    );
  }

}
