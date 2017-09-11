import 'package:flutter/material.dart';
import 'weight_value.dart';

class WeightListScreen extends StatefulWidget {
  @override
  State<WeightListScreen> createState() => new WidgetListState();
}

class WidgetListState extends State<WeightListScreen> {
  final List<WeightWidget> _weights = <WeightWidget>[];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Weight Control")),
        body: new Container(child: _buildBody(_weights)),
        floatingActionButton: _floatingActionButton(context));
  }

  FloatingActionButton _floatingActionButton(BuildContext context) => new FloatingActionButton(
      child: new Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed("/AddWeight").then((value) => onValue(value));
      });

  Widget _buildBody(List<WeightWidget> weights) {
    if (_weights.length > 0) {
      return _buildDataList();
    } else {
      return _buildNoData();
    }
  }

  Widget _buildDataList() {
    return new Row(
      children: <Widget>[
        new Flexible(
            child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                itemBuilder: (_, int index) => _weights[index],
                itemCount: _weights.length))
      ],
    );
  }

  Widget _buildNoData() {
    return new Container(child: new Center(child: new Text("No data")));
  }

  onValue(WeightValue value) {
    if (value != null) {
      WeightWidget wd = new WeightWidget(value: value);

      setState(() {
        _weights.add(wd);
      });
    }
  }
}

class WeightWidget extends StatelessWidget {
  final WeightValue value;

  WeightWidget({this.value});

  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
      new Container(
          margin: const EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text("Weight:", style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: new Text(value.getWeight()),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text("Date:", style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: new Text(value.getDate()),
                  )
                ],
              )
            ],
          ))
    ]);
  }
}
