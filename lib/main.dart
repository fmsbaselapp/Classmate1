import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Classmate());

@override
class Classmate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Maximum",
            style: TextStyle(fontFamily: 'Denise'),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {})
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("pornoooooo"),
              Text("123"),
              TextScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextScreen extends Classmate {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        "porn",
        style: TextStyle(fontFamily: 'Denise'),
      ),
    );
  }
}
