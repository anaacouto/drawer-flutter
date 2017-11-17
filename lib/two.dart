import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';

class Two extends StatefulWidget{

  TwoState createState() => new TwoState();

}

class TwoState extends State<Two>{

  String barcode = "";

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
              new RaisedButton(
                child: new Text("PRESS ME"),
                onPressed: scan,
              ),
              new Text(barcode),
            ],
          ),
        ),
      ),
    );
  }

  Future scan() async{
    String barcode = await BarcodeScanner.scan();
    setState(() => this.barcode = barcode);
  }

}
