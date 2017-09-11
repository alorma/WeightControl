import 'package:flutter/material.dart';

class WeightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Weight Control")),
        body: new Container(),
        floatingActionButton: new FloatingActionButton(
            child: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/AddWeight").then((value) => onValue(value));
            }));
  }

  onValue(double value) {

  }
}
