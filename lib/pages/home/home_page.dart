import 'package:flutter/material.dart';

class ESHomePage extends StatefulWidget {
  @override
  _ESHomePageState createState() => _ESHomePageState();
}

class _ESHomePageState extends State<ESHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        child: Align(
          child: Text('这是首页的内容'),
        ),
      ),
    );
  }
}
