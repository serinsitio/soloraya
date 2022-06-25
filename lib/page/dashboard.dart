import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20)),
            new Text("S O L O  R A Y A", style: new TextStyle(fontSize: 30),),
            new Padding(padding: new EdgeInsets.all(20)),
            new Image.asset("assets/dashbord.png", width: 250,)
          ],
        ),
      ),
    );
  }
}
