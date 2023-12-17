import 'package:flutter/material.dart';
import 'package:task/pages/Firstscreen.dart';
import 'package:task/pages/Thirdscreen.dart';

class Secondscreen extends StatefulWidget {
  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("To do list"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Firstscreen()));
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Firstscreen()));
                },
                icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: Center(
            child: ListView(children: [
          Container(
            child: Image(
              image: AssetImage('images/istockphoto-1271149787-612x612.jpg'),
            ),
            height: 200,
            width: 250,
          ),
          Text('Tasks list', textAlign: TextAlign.center),
          Container(
            height: 350,
            width: 250,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'U',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Ui/Ux App design',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.red,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'U',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Ui/Ux App design',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.green,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'V',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('view conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.yellow,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(106, 0, 0, 0),
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Text(
                                'F',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.center),
                        ),
                        Expanded(
                            child: Container(
                                child: Text('Foot ball dribling',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                                alignment: Alignment.topLeft)),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: Text('April,29,2023',
                                  style: TextStyle(fontSize: 11)),
                              alignment: Alignment.topRight,
                            )),
                        const VerticalDivider(
                          color: Colors.red,
                          thickness: 2,
                          width: 20,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 182, 42, 0),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Thirdscreen()));
                      },
                      child: Text('Create task',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                  )
                ]),
          )
        ])));
  }
}
