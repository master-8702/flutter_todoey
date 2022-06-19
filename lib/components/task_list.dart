import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_data_provider.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // here rather than calling Provider.of(context). or context.watch<TaskDataProvider>()
    // we define a consumer widget and we can get all our datas from it's taskData variable(parameter)

    return Consumer<TaskDataProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: taskData.alltasks[index].taskName,
              isChecked: taskData.alltasks[index].isDone,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCounter,
        );
      },
    );
  }
}
