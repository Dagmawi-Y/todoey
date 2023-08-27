import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallback);
  final Function addTaskCallback;
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                }),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              child: const Text(
                'Add',
              ),
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
