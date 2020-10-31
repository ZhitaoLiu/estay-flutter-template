import 'package:flutter/material.dart';

class ESMinePage extends StatefulWidget {
  @override
  _ESMinePageState createState() => _ESMinePageState();
}

class _ESMinePageState extends State<ESMinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'),),
      body: Container(
        child: Align(
          child: Text('这个是我的内容'),
        ),
      ),
    );
  }
}
