import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final ValueChanged<bool?>? checkboxCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(left: 40, right: 40),
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: ((isChecked!) ? TextDecoration.lineThrough : null)),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
          //onChanged: toggleCheckboxState,
        ));
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool? checkboxState;
//   final ValueChanged<bool?>? toggleCheckboxState;
//
//   TaskCheckbox(
//       {required this.checkboxState, required this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
//
