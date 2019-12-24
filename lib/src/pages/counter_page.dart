import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State {
  final TextStyle _textStyle = new TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of taps:', style: _textStyle),
            Text('$_count', style: _textStyle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('Hola mundo');
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
