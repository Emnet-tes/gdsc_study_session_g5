import 'package:book_store/pages/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse},
        ),
     home: firstscreen());
  }
}
