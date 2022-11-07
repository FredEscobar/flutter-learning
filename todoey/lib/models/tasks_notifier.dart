import 'package:flutter/cupertino.dart';

import 'task.dart';

class TasksNotifier with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  TasksNotifier();

  void addTask(taskTitle) {
    tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void markTask(taskIndex) {
    tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }
}
