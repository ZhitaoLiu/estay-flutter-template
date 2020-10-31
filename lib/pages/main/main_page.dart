import 'package:flutter/material.dart';

import 'package:estay_flutter_template/pages/main/init_items.dart';

class ESMainPage extends StatefulWidget {

  static const String routeName = "/";

  @override
  _ESMainPageState createState() => _ESMainPageState();
}

class _ESMainPageState extends State<ESMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
