import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle = '';
  final Function addTaskCallback;

  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              // Make the keyboard automatically appear
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
