import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/Model/task.dart';
import'dart:collection';

class TaskData extends ChangeNotifier
{
  List<Task> _tasks = [
    Task("buy milk", name: 'buy milk'),
    Task("buy bread", name:'buy bread'),
    Task("buy eggs" ,name: 'buy eggs'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }


  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTask)
  {
    final task=Task(newTask, name: '$newTask');
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}
