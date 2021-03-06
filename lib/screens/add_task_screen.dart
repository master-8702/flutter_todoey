import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_data_provider.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // only(
          //     topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (enteredValue) {
                  newTask = enteredValue;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Consumer<TaskDataProvider>(
                builder: (context, taskData, child) => TextButton(
                  onPressed: () {
                    //
                    taskData.addTask(newTask);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent),
                  ),
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
