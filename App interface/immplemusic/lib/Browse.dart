import 'package:flutter/material.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [Text("Listen Now"), Text("Ishikawa Thitinat")],
          ),
        )
      ],
    );
  }
}
