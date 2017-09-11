import 'package:flutter/material.dart';

class WeightListScreen extends StatefulWidget {
  @override
  State<WeightListScreen> createState() => new WidgetListState();
}

class WidgetListState extends State<WeightListScreen> {
  final List<WeightData> _weights = <WeightData>[];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Weight Control")),
        body: new Container(
            child:
                _weights.length > 0 ?
                new Text(_weights[0].value.toString()) :
                new Text("No Data")),
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
    WeightData wd = new WeightData(value: value, date: new DateTime.now());

    setState(() {
      _weights.add(wd);
    });
  }
}

class WeightData {
  final double value;
  final DateTime date;

  WeightData({this.value, this.date});
}
