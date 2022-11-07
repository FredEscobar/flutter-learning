import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_notifier.dart';

class AddTask extends StatelessWidget {
  String taskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent)),
            TextField(
              onChanged: (value) {
                taskTitle = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                context.read<TasksNotifier>().addTask(taskTitle);
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white)),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
            )
          ],
        ),
      ),
    );
  }
}
