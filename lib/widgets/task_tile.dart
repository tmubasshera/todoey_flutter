
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 bool isChecked;
  final String taskName;
  final Function (bool?) checkBoxCallBack;
  final Function () longPressCallback; 

  TaskTile({required this.isChecked, required this.taskName, required this.checkBoxCallBack, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallBack,
        ));
  }
}




// void checkBoxCallBack(bool? checkBoxState) {
//     if (checkBoxState != null) {
//       setState(() {
//         isChecked = checkBoxState;
//       });
//     }
//   }