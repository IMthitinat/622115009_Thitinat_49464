import 'package:flutter/material.dart';

class ListenPage extends StatefulWidget {
  const ListenPage({Key? key}) : super(key: key);

  @override
  _ListenPage createState() => _ListenPage();
}

class _ListenPage extends State<ListenPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
          child: new Material(
              borderRadius: BorderRadius.circular(30.0),
              elevation: 0.0,
              child: new Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  // the box shawdow property allows for fine tuning as aposed to shadowColor
                  boxShadow: [
                    new BoxShadow(
                        color: Color(0xFFFFAFBD),
                        // offset, the X,Y coordinates to offset the shadow
                        offset: new Offset(0.0, 10.0),
                        // blurRadius, the higher the number the more smeared look
                        blurRadius: 10.0,
                        spreadRadius: 4.0)
                  ],
                ),
                // child: Text("This is where your content goes")
              ))),
    ]);
  }
}
