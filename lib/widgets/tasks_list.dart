import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import '../tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            longPressCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
            taskName: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (boolValue) {
              // setState(() {
              //   Provider.of<TasksData>(context).tasks[index].toggleDone();
              // });
              taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}



    // ListView(
    //   children: [
    //     TaskTile(taskName: tasks[0].name), 
    //     TaskTile(taskName: tasks[1].name),
        
    //   ],
    // );