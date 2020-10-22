import 'package:flutter/foundation.dart';

class Task {
  String description;
  bool done;

  Task({this.description, this.done = false});

  void completeTask() {
    print(done);
    done = !done;
  }
}

class TaskList extends ChangeNotifier {
  List<Task> tasks = [Task(description: 'hello', done: false)];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void completeTask(Task task) {
    task.done = !task.done;
    notifyListeners();
  }
}
