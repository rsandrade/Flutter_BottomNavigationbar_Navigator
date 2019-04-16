import 'package:flutter/material.dart';

class PlaceholderWidgetOne extends StatelessWidget {
  PlaceholderWidgetOne();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Testing'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlaceholderWidgetOneSecondScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}

class PlaceholderWidgetOneSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Container(
        child: Text('Test 1')
      ),
    );
  }
}