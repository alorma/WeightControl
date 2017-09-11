import 'package:flutter/material.dart';
import 'weight_value.dart';

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
                  WeightValue value = new WeightValue(24.0, new DateTime.now());
                  Navigator.of(context).pop(value);
                },
                child: new Text("ADD"))
          ],
        )),
      ),
    );
  }
}
