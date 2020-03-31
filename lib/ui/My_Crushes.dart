import 'package:flutter/material.dart';

import 'customButton.dart';

class My_Crushes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new my_crushes();
  }
}

class my_crushes extends State<My_Crushes> {
  var map = {
    1:  "Racheal was my first ever crush, from class 2 to class 6",
    2:  "Efua Aidoo was from outside the country as at that time we were in primary 5. She's pursing political science now at Legon",
    3:  "Deborah is an Ivorian. She was the lady I was obsessed with the most. It took me 3 years to get over her",
    4:  "Georgina was the most submisive and I respected her for that, still do",
    5:  "Eugenia is the youngest on the list, she is very beautiful and intelligent. She wants to become a doctor",
    6:  "Portia is the best shaped amongst the rest, it's a marvel to look at her backside, she's vying for a leadership role in school"
  };

  var map_2 = {
    1 : 'lib/images/Racheal.jpg',
    2 : 'lib/images/Efua.jpg',
    3 : 'lib/images/Deborah.jpg',
    4 : 'lib/images/Georgina.jpg',
    5 : 'lib/images/Eugenia.jpg',
    6 : 'lib/images/Portia.jpg'
  };

  var Girl = [
    "ignore",
    "Racheal Wilson",
    "Efua Aidoo",
    "Deborah Seka Line",
    "Georgina Thompson",
    "Eugenia Elikem Lawoe",
    "Portia Esinam Attivor"
  ];

  String _Lady = "";
  String _mapKey ="";
  String _mapValue ="";
  int i = 0;
  void _runCrush() {
    setState(() {
      i = i + 1;
      if (i < Girl.length) {
        _Lady = Girl[i];
        _mapKey = map[i];
        _mapValue = map_2[i];
      } else {
        _scaffoldKey.currentState.showSnackBar(new SnackBar(
          content: new Text(
            "This is the last Girl so far",
            style: new TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
          duration: new Duration(hours:0 ,minutes:0 ,seconds:0 ,milliseconds:700 ,microseconds: 0),
        ));
        //Scaffold.of(context).showSnackBar();
        i = 0;
      }
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text(
          "My Crushes",
          style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[new Icon(Icons.sentiment_very_dissatisfied),
          new Padding(padding: new EdgeInsets.all(7))],

      ),
      backgroundColor: Colors.blueGrey,
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                "Here They Are!",
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
            new Container(
              child: new Text(
                _Lady,
                style: new TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            new Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                width: 300,
                height: 300,
                child: new Column(
                  children: <Widget>[
                    new Padding(padding: new EdgeInsets.all(10)),
                    new Container(
                      child: new Image.asset(
                        _mapValue,
                        height: 200.0,
                        width: 380.0,
                        //color: Colors.green,
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.all(7)),
                    new Container(
                      width: 250,
                      alignment: Alignment.center,
                      child: new Text(
                        _mapKey,
                        style: new TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                )),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new RaisedButton(onPressed: _runCrush,
            child: new Text("NextGirl",
            style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20
            ),),
            color: Colors.green
              ,)
            //new customButton()
          ],
        ),
      ),
    );
  }
}
