import 'package:flutter/material.dart';
import 'package:task/pages/Secondscreen.dart';
import 'package:task/pages/Forthscreen.dart';

class Thirdscreen extends StatefulWidget {
  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondscreen()));
              },
              icon: Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ],
          title: Text(
            'Create New Task',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 550,
          width: 250,
          child: ListView(children: [
            Container(
              child: Text(
                'Main task name',
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.deepOrange),
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(69, 0, 0, 0),
                      blurRadius: 2,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ]),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text('Ui/Ux App design',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black))
                ],
              ),
            ),
            Container(
                child: Text(
                  'Due Date',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.deepOrange,
                  ),
                ),
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(69, 0, 0, 0),
                      blurRadius: 2,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ]),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Expanded(
                      flex: 2,
                      child: Text('24/12/2004',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(220, 0, 0, 0)))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month_sharp,
                            color: Colors.deepOrange,
                          )))
                ],
              ),
            ),
            Container(
              child: Text(
                'Description',
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.deepOrange),
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 90,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(69, 0, 0, 0),
                      blurRadius: 2,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ]),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Expanded(
                      child: Text(
                          "First i have to animate the logo and later prototyping my design.it's very important",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black)))
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Forthscreen()));
                    },
                    child: Text('Add task',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                )
              ],
            ))
          ]),
        )));
  }
}
