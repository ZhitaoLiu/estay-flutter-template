import 'package:flutter/material.dart';

class ESDetailPage extends StatefulWidget {

  static const routeName = '/detail';

  final int id;

  ESDetailPage(this.id);

  @override
  _ESDetailPageState createState() => _ESDetailPageState();
}

class _ESDetailPageState extends State<ESDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页面'),
      ),
      body: Container(
        child: Align(
          child: Text('这个详情页面内容,id：${widget.id}'),
        ),
      ),
    );
  }
}
