import 'package:flutter/material.dart';

class Todotile extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Todotile(
      {super.key,
      required this.taskname,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Container(
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
              Checkbox(value: taskCompleted, onChanged: onChanged),
              Expanded(
                  child: Container(
                      child: Text(taskname,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12)),
                      alignment: Alignment.topLeft)),
              Expanded(
                  flex: 2,
                  child: Container(
                    child:
                        Text('April,29,2023', style: TextStyle(fontSize: 11)),
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
        ));
  }
}
