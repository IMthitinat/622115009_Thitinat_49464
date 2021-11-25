import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Caveat'),
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
            backgroundColor: Colors.pinkAccent, title: Text("Calculate App")),
        body: Home(),
      ), //Scaffold
    ); //MaterialApp
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController quantity = TextEditingController();
  // double price = 100000;
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();


  @override
  void initState() {

    super.initState();
    result.text = "Buy X bearbricks. Because each bearbrick cost X THB, you have to pay X THB";
  }
  @override
  Widget build(BuildContext context) {
    // return Container(

    // );
    return ListView(
          children: [
             Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Lalisa.jpg",
                  width: 300,
                  // height: 280,
                ),
                SizedBox(
                  height: 20,
                ),
                // Text("Picture"),
                Text(
                  "Calculate Program",
                  style: TextStyle(
                      fontFamily: "pphometowntest",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.withOpacity(0.3)),
                ),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                      labelText: "Buy Bake", border: OutlineInputBorder()),
                ),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                      labelText: "Price Baka", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ), //TextFild
            ElevatedButton(
             onPressed: () {
                    var cal =
                        double.parse(quantity.text) * double.parse(price.text);
                    print("Baka quality: ${quantity.text} Total: ${cal} THB");
                    setState(() {
                      result.text =
                          "Buy ${quantity.text} Baka. Because each Baka cost ${price.text} THB, you have to pay ${cal} THB";
                    });
                  },
                  child: Text("Calculate"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffAFCBFF)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(10, 30, 50, 70)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontFamily: "pphometowntest", fontSize: 20))),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(result.text)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
