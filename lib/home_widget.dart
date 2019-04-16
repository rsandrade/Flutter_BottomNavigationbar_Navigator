import 'package:flutter/material.dart';
import 'one_placeholder_widget.dart';
import 'two_placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    // Item 1
    PlaceholderWidgetOne(),
    // Item 2
    PlaceholderWidgetTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar + Navigator'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('One'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_answer), 
                title: Text('Two'),
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
