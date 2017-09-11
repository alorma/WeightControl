import 'package:flutter/material.dart';
import 'weight_value.dart';

class AddWeightScreen extends StatelessWidget {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Add Weight")),
      body: new Container(
        child: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: Theme.of(context).cardColor),
              child: _buildSendInput(),
            ),
            new RaisedButton(
                onPressed: () {
                  String textValue = _textController.text;
                  WeightValue value = new WeightValue(double.parse(textValue), new DateTime.now());
                  Navigator.of(context).pop(value);
                },
                child: new Text("ADD"))
          ],
        )),
      ),
    );
  }

  Widget _buildSendInput() => new TextField(
      controller: _textController,
      decoration: new InputDecoration.collapsed(hintText: "Add weight"),
      keyboardType: TextInputType.number);
}
