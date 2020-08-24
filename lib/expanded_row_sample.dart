import 'package:flutter/material.dart';

class ExpandedRowSample extends StatefulWidget {

  @override
  _MyExpandedRow createState() => new _MyExpandedRow();

}

class _MyExpandedRow extends State<ExpandedRowSample> {
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
        title: Text("Expanded Row Sample"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                height: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}