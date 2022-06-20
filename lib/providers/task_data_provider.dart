import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';

// for the provider we add(extends) the "with changeNotifier" extension
// so that it will notify any changes on the properties of the class

class TaskDataProvider extends ChangeNotifier {
  final List<Task> _taskList = [
    Task(taskName: "Buy Milk"),
    Task(taskName: "Buy Fruit"),
    Task(taskName: "Buy Bread"),
    Task(taskName: "Buy Bread 2"),
  ];

  late bool _isDoneStatus;

  get isDone => _isDoneStatus;

  int get taskCounter => _taskList.length;
  UnmodifiableListView<Task> get alltasks => UnmodifiableListView(_taskList);

  void addTask(String newTaskName) {
    final t = Task(taskName: newTaskName);
    _taskList.add(t);
    notifyListeners();
    for (var a in _taskList) {
      print(a.taskName);
    }
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }

  void toggleDone() {
    _isDoneStatus = !_isDoneStatus;
    notifyListeners();
  }

  void sampleMethod() {
    final ts = Task(taskName: "Buying Breaker");
    _taskList.add(ts);
    notifyListeners();
  }
}
