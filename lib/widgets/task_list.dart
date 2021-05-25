import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:todo_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> task;

  const TaskList({Key key, this.task}) : super(key: key);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.task[index].name,
            isChecked: widget.task[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.task[index].toggleDone();
              });
            });
      },
      itemCount: widget.task.length,
    );
  }
}
