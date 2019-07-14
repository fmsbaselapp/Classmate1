import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';



class Stundenplan extends StatelessWidget {
  const Stundenplan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: <Widget>[
          Column(
            children: <Widget>[
              TextScreen(),
              TextScreen(),
              TextScreen(),
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
    );
  }
}

class TextScreen extends Classmate {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(
                0.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        margin: EdgeInsets.all(5.0),
        height: 70,
        width: MediaQuery.of(context).size.width / 1,
        child: Row(
          children: <Widget>[
            Container(
              //Circle
              margin: EdgeInsets.all(20.0),
              child: CustomPaint(painter: ShapesPainter()),
            ),
            Expanded(
              child: Container(
                //Text
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      //Fach
                      child: Text(
                        "Mathe",
                        style: TextStyle(fontFamily: 'MaaxBold', fontSize: 25),
                      ),
                    ),
                    Container(
                      //Zeit
                      child: Text(
                        "10:45 - 12:25",
                        style: TextStyle(
                            color: Color.fromRGBO(59, 59, 59, 0.5),
                            fontSize: 13,
                            fontFamily: "MaaxRegular"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              //Raum
              child: Text(
                "A23",
                style: TextStyle(fontFamily: "MaaxMedium", fontSize: 20),
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 1, size.height / 1);

    // draw the circle on centre of canvas having radius 75.0
    canvas.drawCircle(center, 21.5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
