import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/expanded_column_sample.dart';
import 'package:flutter_app/wrap_sample.dart';
import 'animated_container_sample.dart';
import 'expanded_row_sample.dart';

void main() {
  runApp(MyApp());
}

final routes = {
  '/': (BuildContext context) => new DashboardPage(),
  '/expanded_column_sample': (BuildContext context) => new ExpandedColumnSample(),
  '/expanded_row_sample': (BuildContext context) => new ExpandedRowSample(),
  '/wrap_sample': (BuildContext context) => new WrapExamplePage(),
  '/animated_container_sample': (BuildContext context) => new AnimatedContainerSample(),
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




