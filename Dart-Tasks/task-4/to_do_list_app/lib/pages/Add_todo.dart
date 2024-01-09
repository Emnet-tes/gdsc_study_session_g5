import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_list_app/pages/Forthscreen.dart';
import 'package:to_do_list_app/pages/Todolist.dart';

final _formkey = GlobalKey<FormState>();

class Thirdscreen extends StatefulWidget {
  final Map? todo;
  const Thirdscreen({
    super.key,
    this.todo,
  });
  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isedit = false;

  @override
  void initState() {
    super.initState();
    final todo = widget.todo;
    if (todo != null) {
      isedit = true;
      final title = todo['title'];
      final description = todo['description'];
      titleController.text = title;
      descriptionController.text = description;
    }
  }

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
            isedit ? 'Edit To-do' : 'Create New Task',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.all(20), children: [
          Container(
              child: Column(
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
              ),
              Container(
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
                        offset: Offset(0, 2), // Shadow position
                      ),
                    ]),
                child: TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                      hintText: "'Try typing your Task Title'",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text('Due date',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.deepOrange)),
                alignment: Alignment.bottomLeft,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(106, 0, 0, 0),
                          blurRadius: 4,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ]),
                  child: TextFormField(
                      controller: dateController,
                      decoration: InputDecoration(
                          hintText: "'click the icon the choose date'",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 10),
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
                            dateController.text =
                                DateFormat('d-MM-yyy').format(pickeddate);
                          });
                        }
                      })),
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.deepOrange,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(106, 0, 0, 0),
                          blurRadius: 4,
                          offset: Offset(0, 2), // Shadow position
                        ),
                      ]),
                  child: TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: 'more about the task...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 4,
                    maxLines: 8,
                  )),
            ],
          )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 60)),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: isedit ? UpdateData : addTask,
                  child: Text(isedit ? 'Update' : 'Add task',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
              Container(
                height: 30,
                width: 100,
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
                                alignment: Alignment.topLeft,
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

  Future<void> UpdateData() async {
    //get the data from form
    final todo = widget.todo;
    if (todo == null) {
      print("you can't update without data");
      return;
    }
    final title = titleController.text;
    final description = descriptionController.text;
    final id = todo['_id'];
    final body = {
      "title": title,
      "description": description,
      "is_completed": false
    };
    //submit updated  data to server

    final url = 'https://api.nstack.in/v1/todos/$id';
    final uri = Uri.parse(url);
    final response = await http.put(uri,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});
    //show success or fail message based on status
    if (response.statusCode ==200){ 
      showSuccessMessage('Update Success');
    } else {
      showErrorMessage('Update failed');}
  }

  Future<void> addTask() async {
    //get the data from form
    final title = titleController.text;
    final date = dateController.text;
    final description = descriptionController.text;
    final body = {
      "title": title,
      "description": description,
      "date": date,
      "is_completed": false
    };

    //submit data to server
    final url = 'https://api.nstack.in/v1/todos';
    final uri = Uri.parse(url);
    final response = await http.post(uri,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});

    //show success or fail message based on status
    if (response.statusCode == 201) {
      titleController.text = '';
      descriptionController.text = '';
      dateController.text = '';
      showSuccessMessage('Creation Success');
    } else {
      showErrorMessage('Creation failed');
    }
  }

  void showSuccessMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showErrorMessage(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
