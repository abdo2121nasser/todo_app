import 'package:flutter/material.dart';
import 'package:work_shop1/screens/dashboard_screen.dart';
import 'package:work_shop1/screens/login_screen.dart';
import 'package:work_shop1/screens/register_screen.dart';
import 'package:work_shop1/screens/splash_screen.dart';



class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
    home: DashBoardScreen(),
    );
  }
}
