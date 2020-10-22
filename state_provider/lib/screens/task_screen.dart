import 'package:flutter/material.dart';
import 'package:state_provider/models/task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task app'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Consumer<TaskList>(builder: (context, taskList, child) {
          return ListView.builder(
              itemCount: taskList.tasks.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(taskList.tasks[i].description),
                  onTap: () => taskList.completeTask(taskList.tasks[i]),
                  trailing: taskList.tasks[i].done
                      ? Icon(Icons.done)
                      : Icon(Icons.crop_square),
                );
              });
        }),
      ),
    );
  }
}
