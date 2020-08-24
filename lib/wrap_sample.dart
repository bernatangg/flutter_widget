import 'package:flutter/material.dart';

class WrapExamplePage extends StatefulWidget {

  @override
  _WrapExamplePage createState() => new _WrapExamplePage();

}

class _WrapExamplePage extends State<WrapExamplePage> {
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
        title: Text("Wrap Sample"),
        centerTitle: true,
      ),
      body: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0,
        children: [
          Chip(
            avatar: CircleAvatar(radius: 48.0, backgroundColor: Colors.blue.shade900, child: Text('AH')),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(radius: 48.0, backgroundColor: Colors.blue.shade900, child: Text('ML')),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(radius: 48.0, backgroundColor: Colors.blue.shade900, child: Text('HM')),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(radius: 48.0, backgroundColor: Colors.blue.shade900, child: Text('JL')),
            label: Text('Laurens'),
          ),
        ],
      ),
    );
  }

}