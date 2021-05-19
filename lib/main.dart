import 'dart:ui';
import 'package:dwelcome/billan.dart';
import 'package:dwelcome/listdwa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "HELLO DOCTOR",
    home: Dw(),
  ));
}

class Dw extends StatefulWidget {
  State<StatefulWidget> createState() => DwState();
}

class DwState extends State<Dw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "                             Welcom Doctor",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Ubuntu",
          ),
        ),
      ),
      body: Container(
        color: Color(0xff011A39),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              " Welcom ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Ubuntu",
                  fontSize: 70,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              " Doctor ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Ubuntu",
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
                width: 370,
                height: 300,
                decoration: BoxDecoration(
                    color: Color(0xff1D5BFA),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        blurRadius: 50,
                        offset: Offset(0, 5),
                        spreadRadius: 0,
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ignore: deprecated_member_use
                        ClipOval(
                            child: Container(
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dwa.png'),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListDwa()),
                              );
                              print("HIIIIIIIIIIIIIIIIIIIIIIIIIII");
                            },
                            child: null,
                          ),
                        )),
                        // ignore: deprecated_member_use
                        ClipOval(
                            child: Container(
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/bill.png'),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Billan()),
                              );
                            },
                            child: null,
                          ),
                        )),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
