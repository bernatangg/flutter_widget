import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPage createState() => new _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = new GlobalKey<ScaffoldState>();

    var btnExpandedColumnSample = new FlatButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/expanded_column_sample");
      },
      color: Colors.blue,
      child: Text("Expanded Column"),
    );

    var btnExpandedRowSample = new FlatButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/expanded_row_sample");
      },
      color: Colors.amber,
      child: Text("Expanded Row"),
    );

    var listBtn = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        btnExpandedColumnSample,
        btnExpandedRowSample,
      ],
    );

    return new Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: new Center(
          child: listBtn,
        ),
      ),
    );
  }
}
