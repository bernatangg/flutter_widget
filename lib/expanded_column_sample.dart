import 'package:flutter/material.dart';

class ExpandedColumnSample extends StatefulWidget {

  @override
  _MyExpandedColumn createState() => new _MyExpandedColumn();

  }

class _MyExpandedColumn extends State<ExpandedColumnSample> {

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
