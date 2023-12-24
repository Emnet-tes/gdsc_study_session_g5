import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Gdsc book store',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            leading: Icon(Icons.sort),
          ),
          body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(15.0),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('text'),
                        style: ElevatedButton.styleFrom(),
                      ),
                      // ListView.builder(itemCount: 10, itemBuilder: (context, index) => Card(),scrollDirection: Axis.horizontal,),
                      ListView.separated(itemBuilder: itemBuilder, separatorBuilder: , itemCount: itemCount)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.all(7.0),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
