import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:firebase_crashlytics/firebase_crashlytics.dart'; p1
//import 'Setup/signIn.dart'; p1
import 'Setup/signIn.dart';
import 'bottom_nav.dart';


void main() {
  //Crashlytics.instance.enableInDevMode = true; p1

  // Pass all uncaught errors to Crashlytics.
  FlutterError.onError = (FlutterErrorDetails details) {
   // Crashlytics.instance.onError(details); p1
  };
  runApp(Classmate());
}

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
