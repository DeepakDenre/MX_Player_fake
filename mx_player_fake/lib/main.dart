// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print, unused_element

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

dynamic Folder(var w) {
  return Container(
    height: 70,
    width: w,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 190, 190, 190),
    ),
    child: Text("Folder Name !"),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double TopPadding = MediaQuery.of(context).padding.top;
    double AppBarHeight = 60.0;
    double SH =
        MediaQuery.of(context).size.height - (TopPadding + AppBarHeight);
    double SW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            //App Top Padding Start
            height: TopPadding,
            width: SW,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 221, 221)
                ],
              ),
            ),
          ),
          //App Top Padding End
          //App Bar Start
          Container(
            height: AppBarHeight,
            width: SW,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 47, 85),
                  Color.fromARGB(255, 185, 221, 250)
                ],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "MX Player",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                Container(
                  height: AppBarHeight * 0.8,
                  width: AppBarHeight * 0.8,
                  child: FloatingActionButton(
                    onPressed: () {
                      print("Pressed!");
                    },
                    elevation: 0,
                    highlightElevation: 0,
                    splashColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.menu_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          //App Bar End
          //App Body Start
          ListView(
            children: [
              Column(
                children: [
                  Folder(SW),
                  Folder(SW),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
