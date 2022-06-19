import 'package:flutter/material.dart';
import 'package:flutter_todoey/components/task_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/providers/task_data_provider.dart' hide TaskNew;
import '../models/task.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // tasks.add(context.read<TaskProvider>().addTask("blah 1"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Icon(
                        Icons.list,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Todoey",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text("${context.watch<TaskDataProvider>().taskCount} Tasks",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, right: 30, bottom: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: TaskList(
                      // tasks: tasks,

                      )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int counter = context.read<TaskDataProvider>().taskCount;
          // int counter = Provider.of<TaskProvider>(context, listen: false).count;
          context.read<TaskDataProvider>().addTask("balh $counter");
        },

        // onPressed: () async {
        //   // var aa =await Navigator.of(context).push(context,AddTaskScreen())
        //   var a = await showModalBottomSheet(
        //       context: context, builder: (context) => AddTaskScreen());
        //   setState(() {
        //     tasks.add(Task(taskName: a));
        //   });
        // },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
