import 'package:flutter/material.dart';
import 'weight_value.dart';

class AddWeightScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AddWeightState();
  }
}

class AddWeightState extends State<AddWeightScreen> {
  final TextEditingController _textController = new TextEditingController();

  DateTime selectedDate;

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
                    child: selectedDate != null
                        ? new Text(selectedDate.day.toString() +
                        "/" +
                        selectedDate.month.toString() +
                        "/" +
                        selectedDate.year.toString())
                        : null),
                new Container(
                  decoration: new BoxDecoration(color: Theme
                      .of(context)
                      .cardColor),
                  child: _buildSendInput(),
                ),
                new Row(children: <Widget>[
                  new RaisedButton(
                      onPressed: () {
                        _openDatePicker(context);
                      },
                      child: new Text("DATE"))
                ]),
              ],
            )),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.save, color: Colors.white), onPressed: _handleClick),
    );
  }

  Widget _buildSendInput() =>
      new TextField(
          controller: _textController,
          decoration: new InputDecoration(hintText: "Add weight"),
          keyboardType: TextInputType.number);

  void _handleClick() {
    String textValue = _textController.text;
    if ((textValue != null || textValue.isNotEmpty) && selectedDate != null) {
      _textController.clear();
      WeightValue value = new WeightValue(double.parse(textValue), selectedDate);
      Navigator.of(context).pop(value);
    }
  }

  void _openDatePicker(BuildContext context) {
    Duration duration = new Duration(days: 20);
    DateTime dateTime = new DateTime.now();
    showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: dateTime.subtract(duration),
        lastDate: dateTime.add(duration))
        .then((date) => onDateSelected(date));
  }

  onDateSelected(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }
}
