import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import '../models/tasks_notifier.dart';
// import '../models/task.dart';

class TaskList extends StatelessWidget {
  // final List<Task> tasks;
  // TaskList({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Consumer<TasksNotifier>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                  taskTitle: taskData.tasks[index].name,
                  isChecked: taskData.tasks[index].isDone,
                  checkboxCallback: (bool? checkboxState) {
                    taskData.markTask(index);
                  });
            },
            itemCount: taskData.taskCount,
            // itemCount: widget.tasks.length,
          );
        },
      ),
    );
  }
}
