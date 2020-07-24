import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzer/models/userModel.dart';
import 'package:quizzer/screens/Authenticate/login.dart';
import 'package:quizzer/screens/student/studentWelcomeScreen.dart';
import 'package:quizzer/services/userService.dart';

import 'instructor/instructor_subjects.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    UserService userService = new UserService();
    final user = Provider.of<User>(context);

    if (user != null) {
      userService.getUser(user.uid).then((value) {
        if (value.type == "instructor") {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => InstructorSubjects()));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => StudentWelcomeScreen()));
          // return StudentWelcomeScreen();
        }
      });
    }
    return Login();
  }
}
