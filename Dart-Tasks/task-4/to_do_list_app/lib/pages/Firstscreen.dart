import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_list_app/pages/Todolist.dart';
class Firstscreen extends StatefulWidget {
  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Lottie.network('https://lottie.host/ae2dda81-a2d1-4fe2-ab9f-1ee5f5d62f46/eJzSjFJUUT.json'),
      Padding(padding: EdgeInsets.symmetric(vertical: 70.0)),
      Row(children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 15.0)),
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 71, 125, 206),
              borderRadius: BorderRadius.circular(7)),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secondscreen()));
            },
            child: Text('Get Started',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
        )
      ])
    ]));
  }
}
