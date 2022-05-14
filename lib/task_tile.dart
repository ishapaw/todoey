import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? isChecked = false;
  String taskTitle;
  void Function(bool?)? checkboxCallback;
  void Function() longPressCallback;

  TaskTile(
      {this.isChecked,
      required this.taskTitle,
      this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Color(0xFF192233),
          fontWeight: FontWeight.w600,
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
// void checkboxCallback(bool? checkBoxState) {
//   setState(() {
//     isChecked = checkBoxState;
//   });
// }
//
//
