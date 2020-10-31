import 'package:flutter/material.dart';

class ESUnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('错误页面'),),
      body: Container(
        child: Align(
          child: Text('页面跳转错误'),
        ),
      ),
    );
  }
}

