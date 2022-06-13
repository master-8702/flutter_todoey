import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String taskName;

  TaskTile({required this.taskName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
