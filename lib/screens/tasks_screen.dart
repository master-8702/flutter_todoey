import 'dart:ffi';

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
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
                  SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Todoey",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text("12 Tasks",
                      style: TextStyle(
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy Milk"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check_box_outline_blank),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Buy Egs"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check_box_outline_blank),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Buy Ditergent",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check_box),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
