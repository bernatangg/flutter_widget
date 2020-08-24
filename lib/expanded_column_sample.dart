import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';

class ExpandedColumnSample extends StatefulWidget {

  @override
  _MyExpandedColumn createState() => new _MyExpandedColumn();

  }

//  static const String _title = 'Flutter Code Sample';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: MyExpandedColumn(),
//    );
//  }

class _MyExpandedColumn extends State<ExpandedColumnSample> {

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
        ),
        title: Text("Expanded Column Sample"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
