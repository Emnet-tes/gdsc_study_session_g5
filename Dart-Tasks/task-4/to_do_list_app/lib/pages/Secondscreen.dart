import 'package:flutter/material.dart';
import 'package:to_do_list_app/pages/Firstscreen.dart';
import 'package:to_do_list_app/pages/Thirdscreen.dart';

import 'package:to_do_list_app/util/todo_tile.dart';


class Secondscreen extends StatefulWidget {
  @override
  State<Secondscreen> createState() => _SecondscreenState();
}
List todolist = [
    ['make design', false],
    ['study', false]
  ];
class _SecondscreenState extends State<Secondscreen> {
  

  //check box tapped
  void Checkboxchanged(bool? value, index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
      
    });
  }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Task lists"),
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
        floatingActionButton: SizedBox(
            height: 35,
            width: 130,
            child: FloatingActionButton.extended(
              backgroundColor: Colors.deepOrange,
              foregroundColor: const Color.fromARGB(255, 255, 245, 245),
              onPressed: () {
                // Respond to button press

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thirdscreen()));
              },
              icon: Icon(
                Icons.add,
                size: 15.0,
              ),
              label: Text(
                'Create task',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        body: // Center(child:Column(children:[,
            ListView.builder(
                itemCount: todolist.length,
                itemBuilder: ((context, index) {
                  return Todotile(
                    taskname: todolist[index][0],
                    taskCompleted: todolist[index][1],
                    onChanged: (value) => Checkboxchanged(value, index),
                  );
                })));
  }
}
