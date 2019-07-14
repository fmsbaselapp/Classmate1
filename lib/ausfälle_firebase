import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class Ausfaelle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return StreamBuilder<List<QuerySnapshot>>(stream: streamGroup, builder: (BuildContext context, 
    AsyncSnapshot<List<QuerySnapshot>> snapshotList){
                  if(!snapshotList.hasData){
                    return MyLoadingWidget();
                  }
                  // note that snapshotList.data is the actual list of querysnapshots, snapshotList alone is just an AsyncSnapshot

                  int lengthOfDocs=0;
                  int querySnapShotCounter = 0;
                  snapshotList.data.forEach((snap){lengthOfDocs = lengthOfDocs + snap.documents.length;});
                  int counter = 0;
                  return ListView.builder(
                    itemCount: lengthOfDocs,
                    itemBuilder: (_,int index){
                      try{DocumentSnapshot doc = snapshotList.data[querySnapShotCounter].documents[counter];
                      counter = counter + 1 ;
                       return new Container(child: Text(doc.data["name"]));
                      }
                      catch(RangeError){
                        querySnapShotCounter = querySnapShotCounter+1;
                        counter = 0;
                        DocumentSnapshot doc = snapshotList.data[querySnapShotCounter].documents[counter];
                        counter = counter + 1 ;
                         return new Container(child: Text(doc.data["name"]));
                      }

                    },
                  );
                };

/*
class Ausfaelle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('FMS BASEL')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return new Text('Loading...'); //TODO Loading Indicator
          default:
            return new ListView(
              children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: Row(
                    children: <Widget>[
                      new Text(document['Grund']),
                      new Text(document['Zeit'])
                    ],
                  ),
                  subtitle: new Text(document['Zeit']),
                );
              }).toList(),
            );
        }
      },
    );
  }
}
*/
/*
class Ausfaelle extends StatelessWidget {
  const Ausfaelle({Key key}) : super(key: key);

  @override
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return Card(


      child: Column(
        children: <Widget>[
          Text('name'),
          Text('votes')
        ],
      ),

    );
  }
}

@override
Widget build(BuildContext context){
return StreamBuilder(
  stream: Firestore.instance.collection('timon').snapshots(),
  builder: (context, snapshots){
    if (!snapshots.hasData) return const Text("...Loading");
  //return ListView.builder(
    //itemExtent: 80.0,
     //itemCount: snapshots.data.documents.lenght, 
     //itemBuilder: (context, index) => 
     //_buildListItem(context, snapshot.data.documents[index]),),))
};

*/

/* 
class Ausfaelle extends StatefulWidget {
  Ausfaelle({Key key}) : super(key: key);

  _AusfaelleState createState() => _AusfaelleState();
}

class _AusfaelleState extends State<Ausfaelle> {
  List<String> _ausfaelle = ['Pluze', 'stinkt', '2'];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _ausfaelle
            .map(
              (element) => Card(
                    child: Column(
                      children: <Widget>[Text(element)],
                    ),
                  ),
            )
            .toList());
  }
}
*/
