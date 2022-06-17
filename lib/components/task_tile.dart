import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();

  String taskName;
  TaskTile({required this.taskName});
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  //the callback method that we will call inside Task checkbox
  void toggleCheckBox(bool? newState) {
    setState(() {
      isChecked = newState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        checkBoxToggler: toggleCheckBox,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) checkBoxToggler;
  TaskCheckBox({required this.checkBoxState, required this.checkBoxToggler});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: checkBoxToggler,
    );
  }
}
