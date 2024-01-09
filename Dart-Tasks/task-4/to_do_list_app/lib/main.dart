import 'package:flutter/material.dart';
import 'package:to_do_list_app/pages/Add_todo.dart';
import 'package:to_do_list_app/pages/Firstscreen.dart';
import 'package:to_do_list_app/pages/Todolist.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Secondscreen(),
    );
  }
}
