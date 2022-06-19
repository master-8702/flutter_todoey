import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

// for the provider we add(extends) the "with changeNotifier" extension
// so that it will notify any changes on the properties of the class

class TaskDataProvider extends ChangeNotifier {
  List<Task> taskList = [
    Task(taskName: "Buy Milk"),
    Task(taskName: "Buy Fruit"),
    Task(taskName: "Buy Bread"),
    Task(taskName: "Buy Bread 2"),
  ];

  late bool isDone;

  int get taskCounter => taskList.length;
  List<Task> get alltasks => taskList;

  void addTask(String newTaskName) {
    final t = Task(taskName: newTaskName);
    taskList.add(t);
    notifyListeners();
    for (var a in taskList) {
      print(a.taskName);
    }
  }

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }

  void sampleMethod() {
    final ts = Task(taskName: "Buying Breaker");
    taskList.add(ts);
    notifyListeners();
  }
}
