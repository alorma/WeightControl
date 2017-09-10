import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'weight_list.dart';

void main() {
  runApp(new MaterialApp(
      home: new WeightListScreen(),
      routes: routes,
      theme: new ThemeData(
          primaryColor: Colors.grey[400],
          accentColor: Colors.black,
          brightness: Brightness.light)));
}
