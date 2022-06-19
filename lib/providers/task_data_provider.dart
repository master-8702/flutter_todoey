import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

// class TaskNew {
//   late String taskName;
//   late bool isDone;
//
//   TaskNew({required this.taskName, this.isDone = false});
//
//   void toggleDone() {
//     isDone = !isDone;
//   }
// }

// for the provider we add the "with changeNotifier" extension
class TaskDataProvider with ChangeNotifier {
  late List<Task> taskList = [
    Task(taskName: "Buy Milk"),
    Task(taskName: "Buy Fruit"),
    Task(taskName: "Buy Bread"),
  ];
  late int taskCounter = taskList.length;
  late bool isDone;

  int get taskCount => taskCounter;

  void addTask(taskName) {
    Task t = Task(taskName: taskName);
    taskList.add(t);
    taskCounter++;
    print(t);
    notifyListeners();
    for (var a in taskList) {
      print(a.taskName);
      print(taskCount);

      notifyListeners(); // in order to see the new changes on the screen, we must call notifyListners after every change
    }
  }

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }

  List<Task> get alltasks => taskList;
}
