import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
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
            children: [
              const Text(
                "Add Task",
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                autofocus: true,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Add"),
                style: ButtonStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
