import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzer/models/userModel.dart';
import 'package:quizzer/screens/Authenticate/login.dart';
import 'package:quizzer/screens/student/studentWelcomeScreen.dart';
import 'package:quizzer/screens/student/student_exam.dart';
import 'package:quizzer/screens/student/student_results.dart';

import 'instructor/instructor_subjects.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user != null)
      return InstructorSubjects();
    else
      return Login();
  }
}
