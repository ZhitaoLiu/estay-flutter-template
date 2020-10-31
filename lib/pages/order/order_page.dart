import 'package:flutter/material.dart';

class ESOrderPage extends StatefulWidget {
  @override
  _ESOrderPageState createState() => _ESOrderPageState();
}

class _ESOrderPageState extends State<ESOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('订单'),
      ),
      body: Container(
        child: Align(
          child: Text('这是订单的内容'),
        ),
      ),
    );
  }
}
