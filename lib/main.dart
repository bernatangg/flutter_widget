import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/expanded_column_sample.dart';

void main() {
  runApp(MyApp());
}

final routes = {
  '/': (BuildContext context) => new DashboardPage(),
  '/expanded_column_sample': (BuildContext context) => new ExpandedColumnSample(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Flutter Widget',
      theme: new ThemeData(primarySwatch:  Colors.teal),
      routes: routes,
    );
  }
}




