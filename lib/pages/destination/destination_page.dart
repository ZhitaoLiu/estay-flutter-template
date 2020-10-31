import 'package:flutter/material.dart';

class ESDestinationPage extends StatefulWidget {
  @override
  _ESDestinationPageState createState() => _ESDestinationPageState();
}

class _ESDestinationPageState extends State<ESDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('目的地'),
      ),
      body: Container(
        child: Align(
          child: Text('这是目的地的内容'),
        ),
      ),
    );
  }
}
