// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/tasks_data.dart';

import '../models/tasks.dart';

class AddTasksScreen extends StatelessWidget {
 
  String newTaskName ='';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent, 
              fontSize: 30,
            ),
            ),
            TextField(
              onChanged: ((value) {
                newTaskName = value;
              }),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                Provider.of<TasksData>(context, listen: false).addTask(newTaskName);
                Navigator.pop(context);
              },
            ), 
          ],
        ),
      ),
    );
  }
}