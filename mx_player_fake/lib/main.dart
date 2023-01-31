// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print, unused_element, override_on_non_overriding_member, annotate_overrides, sort_child_properties_last, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:mx_player_fake/demo.dart';
import "dart:math";

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  dynamic Folder(SW) {
    TextStyle TS = TextStyle(color: Colors.grey);
    var rng = Random();
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          height: 70,
          width: SW * 0.95,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              setState(
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Demo(),
                    ),
                  );
                },
              );
            },
            child: Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color.fromARGB(255, 218, 214, 214),
                  ),
                  child: Icon(
                    Icons.folder,
                    size: 45,
                    color: Color.fromARGB(255, 154, 85, 16),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  height: 60,
                  width: 200,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Folder",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 22,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "    Videos : " + (rng.nextInt(10)).toString(),
                            style: TS,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    double TopPadding = MediaQuery.of(context).padding.top;
    double AppBarHeight = 60.0;
    double SH =
        MediaQuery.of(context).size.height - (TopPadding + AppBarHeight);
    double SW = MediaQuery.of(context).size.width;
    double El = 0;
    double DW = SW * 0.8;
    return Scaffold(
      drawer: Drawer(
        width: DW,
        child: ListView(
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: DW,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "MX Player",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.blue],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: DW,
                color: Colors.grey,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Icon(
                        Icons.settings,
                        size: 30,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Setting",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 50,
                width: DW,
                color: Colors.grey,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: AppBarHeight,
        title: Container(
          height: AppBarHeight,
          width: SW,
          alignment: Alignment.centerLeft,
          child: Text(
            "MX Player",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          //App Body Start
          Container(
            height: SH,
            width: SW,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 250, 190, 190),
                Color.fromARGB(255, 178, 201, 251)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Folder(SW),
                Folder(SW),
                Folder(SW),
                Folder(SW),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
