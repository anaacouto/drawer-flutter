import 'dart:async';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:url_launcher/url_launcher.dart';

class Two extends StatefulWidget{

  TwoState createState() => new TwoState();

}

class TwoState extends State<Two>{

  String barcode = "";

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Buttons"),
      ),
      body: new Container(
        color: Colors.grey[200],
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                margin: const EdgeInsets.all(16.0),
                child: new RaisedButton(
                  child: new Text(
                    "PRESS ME",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: scan,
                  color: Colors.blue,
                ),
              ),
              new Text(
                barcode,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              new Container(
                margin: const EdgeInsets.all(16.0),
                child: new RaisedButton(
                  child: new Text(
                    "PRESS",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: _launchURL,
                  color: Colors.blue,
                ),
              ),
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

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'is not possible';
    }
  }

}
