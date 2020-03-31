import 'package:flutter/material.dart';

class customButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new callMe();
  }
}

class callMe extends State<customButton> {

  var map = {
    'lib/images/Racheal.jpg': "Racheal was my first ever crush",
    'lib/images/Efua.jpg': "Efua Aidoo was from outside the country",
    'lib/images/Deborah.jpg':
    "Deborah was the lady I was obsessed with the most",
    'lib/images/Georgina.jpg':
    "Georgina was the most submisive and I respected her for that, still do",
    'lib/images/Eugenia.jpg':
    "Eugenia is the youngest on the list, she is very beautiful",
    'lib/images/Portia.jpg':
    "Portia is the best shaped amongst the rest, it's a marvel to look at her backside"
  };

  var Girl = [
    "Racheal Wilson",
    "Efua Aidoo",
    "Deborah Seka Line",
    "Georgina Thompson",
    "Eugenia Elikem Lawoe",
    "Portia Esinam Attivor"
  ];

  _runCrush() {
    String _Lady = "";
    int i = 0;
    setState(() {
      i = i + 1;
      if (i < Girl.length) {
        _Lady = Girl[i];
      }
      else{
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("This is the last Girl so far",
              style: new TextStyle(color: Colors.white),),
              backgroundColor: Colors.blueAccent,));
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        child: new Container(
          child: new Text(
            "Next Girl",
            style: new TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          padding: new EdgeInsets.all(8),
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(10.0), color: Colors.green),
        ),
        onTap: _runCrush
    );
  }
}
