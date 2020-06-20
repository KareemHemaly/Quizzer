import 'package:flutter/material.dart';
import 'package:quizzer/models/userModel.dart';
import 'package:quizzer/screens/wrapper.dart';
import 'package:quizzer/services/auth.dart';
import 'package:provider/provider.dart';


import 'package:quizzer/screens/student/student_exam.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
     //     home: Wrapper(),
        home: StudentExam(),
        ));
  }
}
