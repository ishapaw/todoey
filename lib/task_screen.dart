import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB4F6E6),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Color(0xFF192233),
        child: Icon(Icons.add),
      ),
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 27.0, right: 27.0, bottom: 30.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Icon(
                  Icons.list,
                  size: 30.0,
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Todoey',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF192233),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(
                        color: Color(0xFF192233),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TasksList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
