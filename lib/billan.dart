import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Billan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BillanState();
}

class BillanState extends State<Billan> {
  @override
  var val;
  String dropdownValue = 'One';

  List it = ["DWa1", "DWa2", "DWa3", "DWa4"];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Medicament"),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            color: Color(0xff011A39),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("Resultats de test",
                            style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontSize: 43,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 10.0,
                                    color: Color(0xff1D5BFA),
                                  ),
                                ])),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xff011A39),
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                enabled: true,
                                hintText: 'Value',
                                hintStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                ),
                                prefixIcon: Icon(
                                  Icons.medical_services_outlined,
                                  color: Color(0xffDDF9E1),
                                ),
                                suffix: Text(
                                  "  ml/min",
                                  style: TextStyle(
                                    color: Color(0xffDDF9E1),
                                  ),
                                ),
                                labelText: "La clairence Renal ",
                                labelStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                  fontSize: 22,
                                )),
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xff011A39),
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                enabled: true,
                                hintText: 'Value',
                                hintStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                ),
                                prefixIcon: Icon(
                                  Icons.local_hospital,
                                  color: Color(0xffDDF9E1),
                                ),
                                suffix: Text(
                                  "  ml/min",
                                  style: TextStyle(
                                    color: Color(0xffDDF9E1),
                                  ),
                                ),
                                labelText: "La bilirubine",
                                labelStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                  fontSize: 22,
                                )),
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Color(0xff011A39),
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                enabled: true,
                                hintText: 'Value',
                                hintStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                ),
                                prefixIcon: Icon(
                                  Icons.local_pharmacy,
                                  color: Color(0xffDDF9E1),
                                ),
                                suffix: Text(
                                  "  ml/min",
                                  style: TextStyle(
                                    color: Color(0xffDDF9E1),
                                  ),
                                ),
                                labelText: "Tjp/Tjo",
                                labelStyle: TextStyle(
                                  color: Color(0xffDDF9E1),
                                  fontSize: 22,
                                )),
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(color: Colors.deepPurple),
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>[
                                'One',
                                'Two',
                                'Free',
                                'Four'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Submit"),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.yellow))),
                                ),
                                onPressed: () {},
                                child: Text("Submit"),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
