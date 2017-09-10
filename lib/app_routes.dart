import 'package:flutter/material.dart';
import 'add_weight.dart';

Map<String, WidgetBuilder> get routes =>
    <String, WidgetBuilder>{"/AddWeight": (BuildContext context) => new AddWeightScreen()};
