import 'package:flutter/material.dart';
import 'package:todo_app/modules/settings/settings.dart';
import 'package:todo_app/modules/tasks_list/tasks_list.dart';
import 'layout/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName:(context)=>homeScreen(),
        settingsScreen.routeName:(context)=>settingsScreen(),
        tasksList.routeName:(context)=>tasksList(),
      },
    );
  }
}
