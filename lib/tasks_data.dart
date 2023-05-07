import 'package:flutter/cupertino.dart';
import 'models/tasks.dart';

class TasksData extends ChangeNotifier{
  List<Task> tasks =[
    Task(name: 'buy milk'),
    Task(name: 'buy eggs')
  ] ;

  get taskCount{
    return tasks.length;
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void addTask(String newTaskName){
    final task = Task(name: newTaskName);
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}