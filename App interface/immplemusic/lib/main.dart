import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import './Browse.dart';
import './listen.dart';
import './Library.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'pro'),
      home: MainPage(),
    ); //MaterialApp
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [LibraryPage(), ListenPage(), Browse()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        spreadRadius: 10,
                        blurRadius: 100,
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(200, 70),
                      bottomRight: Radius.elliptical(200, 70),
                    ),
                    gradient: LinearGradient(colors: [
                      Colors.redAccent.shade700,
                      Colors.redAccent.shade400,
                    ]
                        //brgin topcenter
                        ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Music Player",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color: Colors.red.shade100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 190,
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red.shade100,
                        width: 3,
                      ),
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 20)],
                      shape: BoxShape.circle,
                      color: Colors.red.shade100,
                      image: DecorationImage(
                        image: AssetImage('assets/images/bts2.jpg'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 40,
                      color: Colors.red.shade100,
                    ),
                    onPressed: () {
                      print("Account");
                    },
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 5,
                  child: IconButton(
                    icon: Icon(
                      Icons.dehaze,
                      size: 40,
                      color: Colors.red.shade100,
                    ),
                    onPressed: () {
                      print("Account");
                    },
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 5,
                  child: IconButton(
                    icon: Icon(
                      Icons.dehaze,
                      size: 40,
                      color: Colors.red.shade100,
                    ),
                    onPressed: () {
                      print("More");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              overflow: Overflow.visible,
              // alignment: Alignment,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 34, right: 34, top: 30),
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        spreadRadius: 5,
                        blurRadius: 70,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.shade900,
                        Colors.red.shade300,
                      ],
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 145, top: 14),
                        width: double.infinity,
                        child: Text(
                          "Butter",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.red.shade100,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 145),
                        width: double.infinity,
                        child: Text(
                          "Now Playing - BTS",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red.shade100,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 110),
                    height: 115,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red,
                          spreadRadius: 5,
                          blurRadius: 70,
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.fast_rewind,
                                  size: 45,
                                  color: Colors.red.shade500,
                                ),
                                onPressed: () {
                                  print('Rewind');
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 45,
                                  color: Colors.red.shade500,
                                ),
                                onPressed: () {
                                  print('Play');
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.fast_forward,
                                  size: 45,
                                  color: Colors.red.shade500,
                                ),
                                onPressed: () {
                                  print('Forward');
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                        Container(
                          // alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 87),
                          //width: double.infinity,
                          child: IconButton(
                            icon: Icon(
                              Icons.stop,
                              size: 45,
                              color: Colors.red.shade500,
                            ),
                            onPressed: () {
                              print('Stop');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 75,
                    left: 39,
                    child: Container(
                        padding: EdgeInsets.all(55),
                        height: 135,
                        width: 135,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red.shade100,
                            width: 3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.shade100,
                              blurRadius: 20,
                            )
                          ],
                          shape: BoxShape.circle,
                          color: Colors.red.shade100,
                          image: DecorationImage(
                            image: AssetImage('assets/images/butter.jpg'),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.red.shade100,
                          ),
                        )))
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          title: Text("ImpleMusic",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black))),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[50],
        selectedFontSize: 20,
        selectedIconTheme:
            IconThemeData(color: Colors.redAccent[400], size: 40),
        selectedItemColor: Colors.redAccent[400],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music_rounded), label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv), label: "Listen Now"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Browse"),
        ],
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
