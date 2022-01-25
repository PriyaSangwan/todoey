class Task
{
  final String name;
  bool isDone;

  Task(String? newTaskTitle, {required this.name,this.isDone = false});

  void toggleDone()
  {
    isDone=!isDone;
  }
}