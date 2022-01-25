import 'package:flutter/material.dart';
import 'Screen/task_screen.dart';
import 'package:provider/provider.dart';
import'package:todoey_flutter/Model/task_data.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
      child: MaterialApp(
        home:TasksScreen(),
      ),
    );
  }
}

