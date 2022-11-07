import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_notifier.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/task_list.dart';
import '../widgets/task_list.dart';
import '../models/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff58baf5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 50, left: 40, right: 50, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 50.0,
                    color: Color(0xff58baf5),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text('${context.watch<TasksNotifier>().taskCount} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: TaskList(
                  // tasks: context.watch<TasksNotifier>().tasks,
                  ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff58baf5),
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTask()
                        //Navigator.pop(context);
                        ),
                  ),
              isScrollControlled: true);
        },
      ),
    );
  }
}
