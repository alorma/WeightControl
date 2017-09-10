import 'package:flutter/material.dart';

class AddWeightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Add weight")),
      body: new Container(
        child: new Center(
            child: new Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new RaisedButton(
              onPressed: () {
                Navigator.of(context).pop([
                  "value",
                  false,
                ]);
              },
              child: new Text("Add")),
        ])),
      ),
    );
  }
}
