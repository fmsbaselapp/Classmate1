import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Setup/signIn.dart';
import 'bottom_nav.dart';
//import 'stundenplan.dart';
//import 'ausfälle_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(Classmate());

@override
class Classmate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classmate',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}



/*
Scaffold(
          //bottomNavigationBar: AppBottomNav(),
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Maximum",
              style: TextStyle(fontFamily: 'MaaxBold', color: Colors.black),
            ),
          ),
*/
