import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:secondapp/pages/detail.dart';

class HomePage extends StatefulWidget {
  // const HomePage{Key? key}) : super(key: key);

  @override
  __HomePageState createState() => __HomePageState();
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            backgroundColor: Colors.purple[200],
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text('Background'),
            ),
            body: Container()));
  }
}

class __HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
        backgroundColor: Colors.purple[800],
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return MyBox(data[index]['title'], data[index]['subtitle'],
                      data[index]['image'], data[index]['detail']);
                },
                itemCount: data.length,
              );
            },
            future:
                DefaultAssetBundle.of(context).loadString('assets/data.json'),
          )),
    );
  }

  Widget MyBox(String title, String subtitle, String img_url, String detail) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = img_url;
    v4 = detail;

    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(20),
      height: 250,
      decoration: BoxDecoration(
        color: Colors.purple[800],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(img_url),
            fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1), BlendMode.softLight)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
              onPressed: () {
                print("Next page >>");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(v1, v2, v3, v4)));
              },
              child: Text("read more"))
        ],
      ),
    );
  }
}
