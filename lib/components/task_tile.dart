import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() deleteCallback;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkboxCallback,
      required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: checkboxCallback,
        value: isChecked,
      ),
      onLongPress: deleteCallback,
    );
  }
}
