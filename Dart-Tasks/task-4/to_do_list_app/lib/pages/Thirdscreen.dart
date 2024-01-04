import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list_app/pages/Forthscreen.dart';
import 'package:to_do_list_app/pages/Secondscreen.dart';

final _formkey = GlobalKey<FormState>();

class Thirdscreen extends StatefulWidget {
  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  final taskinputcontroller = TextEditingController();
  final taskdatecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();

  TextEditingController datecontroller = TextEditingController();

  void taskinsert() {
    setState(() {
      todolist.add([
        taskinputcontroller.text,
        false,
        taskdatecontroller.text,
        descriptioncontroller.text
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
               Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      transitionsBuilder:
                          (context, animation, AnimationTime, child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.decelerate);
                        return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child);
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return Secondscreen();
                      },
                    ));
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
        body: ListView(children: [
          Container(
              height: 390,
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: Text(
                        'Task Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50)),
                  Container(
                    height: 50,
                    width: 250,
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
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
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'ui/ux design',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                        'Due date',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50)),
                  Container(
                      height: 50,
                      width: 250,
                      padding: EdgeInsets.only(left: 10.0),
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
                      child: Form(
                        key: _formkey,
                        child: TextFormField(
                          controller: datecontroller,
                          decoration: InputDecoration(
                              hintText: '10/12/2024',
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.deepOrange,
                              )),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2027));

                            if (pickeddate != null) {
                              setState(() {
                                datecontroller.text =
                                    DateFormat('d,MM,yyy').format(
                                        pickeddate);
                              });
                            }
                          },
                        ),
                      )),
                  Container(
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50)),
                  Container(
                    height: 100,
                    width: 250,
                    padding: EdgeInsets.only(left: 10.0),
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
                    child: TextFormField(
                      controller: descriptioncontroller,
                      decoration: InputDecoration(
                        hintText: 'more about the task...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      transitionsBuilder:
                          (context, animation, AnimationTime, child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.decelerate);
                        return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child);
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return Forthscreen();
                      },
                    ))
                        .then((value) {
                      taskinsert();
                    });
                  },
                  child: Text('Add task',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
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
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, AnimationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation, curve: Curves.decelerate);
                            return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child);
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return Thirdscreen();
                          },
                        ));
                  },
                  child: Text('cancel',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              )
            ],
          )),
        ]));
  }
}
