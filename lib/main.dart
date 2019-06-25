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
            style: TextStyle(fontFamily: 'MaaxBold'),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {})
          ],
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextScreen(),
                  TextScreen(),
                  TextScreen(),
                  TextScreen(),
                  TextScreen(),
                  TextScreen(),
                ],
              ),
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
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 15),
            blurRadius: 20.0,
            spreadRadius: 5.0,
            offset: Offset(
              10.0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
            
          )],
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        margin: EdgeInsets.all(5.0),
        height: 70,
        width: MediaQuery.of(context).size.width / 1,
      ),
    );
  }
}
