import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'Setup/signIn.dart';
import 'bottom_nav.dart';


void main() {
  Crashlytics.instance.enableInDevMode = true;

  // Pass all uncaught errors to Crashlytics.
  FlutterError.onError = (FlutterErrorDetails details) {
    Crashlytics.instance.onError(details);
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
