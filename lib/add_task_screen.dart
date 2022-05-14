import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';
import 'task.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State {
  TextEditingController tasktext = TextEditingController();
  @override
  void dispose() {
    tasktext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF192233),
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFB4F6E6),
              fontSize: 25.0,
            ),
          ),
          TextField(
            controller: tasktext,
            autofocus: true,
            cursorColor: Color(0xFFB4F6E6),
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            cursorHeight: 25.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            child: Text(
              'Add',
              style: TextStyle(color: Colors.black87),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                  (state) => Color(0xFFB4F6E6)),
            ),
            onPressed: () {
              Provider.of(context, listen: false).addTask(tasktext.text);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
