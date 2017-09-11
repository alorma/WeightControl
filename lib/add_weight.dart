import 'package:flutter/material.dart';

class AddWeightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Add Weight")),
      body: new Container(
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop(24.0);
                },
                child: new Text("ADD"))
          ],
        )),
      ),
    );
  }
}
