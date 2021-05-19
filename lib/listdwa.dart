import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

final List<String> e = <String>['Asprin', 'Bamadol', 'Colorent'];

final List<int> colorCodes = <int>[600, 500, 100];

class ListDwa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListdwaState();
}

class ListdwaState extends State<ListDwa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Medicament"),
      ),
      body: Container(
          child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: e.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            // ignore: deprecated_member_useee
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                ' ${e[index]}',
                style: TextStyle(fontFamily: "Ubuntu"),
              ),
              color: Colors.blue[colorCodes[index]],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )),
    );
  }
}
