import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:to_do_list_app/pages/Firstscreen.dart';
import 'package:to_do_list_app/pages/Add_todo.dart';

import 'package:to_do_list_app/util/todo_tile.dart';

class Secondscreen extends StatefulWidget {
  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  bool isloading = true;
  List items = [];
  @override
  void initState() {
    super.initState();
    fetchTodo();
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
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      transitionsBuilder:
                          (context, animation, AnimationTime, child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.bounceIn);
                        return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child);
                      },
                      pageBuilder: (context, animation, animationTime) {
                        return Firstscreen();
                      },
                    ));
              },
              icon: Icon(Icons.arrow_back_ios)),
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
                          }));
                },
                icon: Icon(
                  Icons.add,
                  size: 15.0,
                ),
                label: Text('Create task',
                    style: TextStyle(fontWeight: FontWeight.bold)))),
        body: Visibility(
            visible: isloading,
            child: Center(
                child: CircularProgressIndicator(
              color: Colors.blueGrey,
            )),
            replacement: RefreshIndicator(
                child: Visibility(
                  visible: items.isNotEmpty,
                  replacement: Center(
                      child: Text('No Todo Item',
                          style: Theme.of(context).textTheme.headlineLarge)),
                  child: ListView.builder(
                      itemCount: items.length,
                      padding: EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        final item = items[index] as Map;
                        final id = item['_id'] as String;

                        return Card(
                          child: ListTile(
                           //leading:Checkbox(value: item['is_completed'], onChanged: taskcompleted(id)),
                            leading: CircleAvatar(child: Text('${index+1}'),),
                                
                            title: Text(item['title']),
                            subtitle: Text(item['description']),
                            trailing: PopupMenuButton(onSelected: (value) {
                              if (value == 'edit') {
                                //route to edit page

                                navigate_to_edit_page(item);
                              } else if (value == 'delete') {
                                //delete and refresh(remove item from task list)

                                deleteById(id);
                              }
                            }, itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text('Edit'),
                                  value: 'edit',
                                ),
                                PopupMenuItem(
                                    child: Text('Delete'), value: 'delete')
                              ];
                            }),
                          ),
                        );
                      }),
                ),
                onRefresh: fetchTodo)));
  }

  void taskcompleted( String id) {

    setState(() {
      
    });
  }

  Future<void> deleteById(String id) async {
    //delete the item
    final url = 'https://api.nstack.in/v1/todos/$id';
    final uri = Uri.parse(url);
    final response = await http.delete(uri);

    if (response.statusCode == 200) {
      //remove the item from the list
      final not_deleted =
          items = items.where((element) => element['_id'] != id).toList();
      setState(() {
        items = not_deleted;
      });
    } else {
      //show error
      showErrorMessage('Deletion failed');
    }
  }

  Future<void> fetchTodo() async {
    final url = 'https://api.nstack.in/v1/todos?pages=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map;
      final result = json['items'] as List;
      setState(() {
        items = result;
      });
    }
    setState(() {
      isloading = false;
    });
    print(response.body);
  }

  void showErrorMessage(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void navigate_to_edit_page(Map item) {
    final route =
        MaterialPageRoute(builder: (context) => Thirdscreen(todo: item));
    Navigator.push(context, route);
  }
}
