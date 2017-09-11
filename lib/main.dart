import 'package:flutter/material.dart';
import 'add_weight.dart';
import 'weight_list.dart';

void main() {
  runApp(new MaterialApp(
      home: new WeightListScreen(),
      routes: <String, WidgetBuilder>{
        "/AddWeight": (BuildContext context) => new AddWeightScreen()
      },
      theme: new ThemeData(
          primaryColor: Colors.grey[400],
          accentColor: Colors.black,
          brightness: Brightness.light)));
}
