import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'bottom_nav.dart';
//import 'stundenplan.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'ausfälle_firebase.dart';

void main() => runApp(Classmate());

@override
class Classmate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          body: Ausfaelle() //Stundenplan(),ExpansionPanelList(children:,),
          //Stream(),

          ),
    );
  }
}

