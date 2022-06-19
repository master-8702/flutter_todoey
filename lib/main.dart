import 'package:flutter/material.dart';
import 'package:flutter_todoey/providers/task_data_provider.dart';
import 'package:flutter_todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // //for the app to work with the provider, we need to wrap the whole app with MultiProvider
// // we can also wrap it with Provider if we are gonna use only a single provider

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) {
        return TaskDataProvider();
      })
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
