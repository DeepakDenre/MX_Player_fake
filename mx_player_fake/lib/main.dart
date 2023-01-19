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

dynamic Folder(SW) {
  return Column(
    children: [
      SizedBox(height: 10),
      Container(
        height: 70,
        width: SW * 0.95,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
          onPressed: () {},
          child: Row(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.folder,
                  size: 45,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8),
              Text(
                "Folder",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )
    ],
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
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 84, 0, 0)
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
          Container(
            height: SH,
            width: SW,
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
