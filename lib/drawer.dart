import 'package:flutter/material.dart';
import './main.dart';
import './first.dart';
import './second.dart';
import './one.dart';
import './two.dart';
import './three.dart';
import './four.dart';
import './five.dart';
import './six.dart';


class TestDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Drawer(
      child: new ListView(
        primary: false,
        children: <Widget>[
          new Container(
            color: Colors.blue,
            height: 180.0,
          ),
          new GestureDetector(
            child: new Container(
              color: Colors.grey[200],
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Main",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new MyApp();}));},
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                'First',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new First();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Second",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Second();}));}
          ),
          new GestureDetector(
            child: new Container(
              color: Colors.grey[200],
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Sub Pages",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            onTap: () { /*...*/ },
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "One",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new One();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Two",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Two();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Three",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Three();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Four",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Four();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Five",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Five();}));}
          ),
          new GestureDetector(
            child: new Container(
              width: 280.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Six",
                style: new TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                ),
              ),
            ),
            onTap: () {Navigator.of(context).push(new MaterialPageRoute<Null>(builder: (BuildContext context){return new Six();}));}
          ),
        ],
      ),
    );
  }
}
