import 'package:flutter/material.dart';
import 'package:quizzer/screens/Authenticate/login.dart';
import 'package:quizzer/screens/student/student_new_exam.dart';
import 'package:quizzer/screens/student/student_results.dart';
import 'package:quizzer/services/auth.dart';

class StudentWelcomeScreen extends StatelessWidget {
  AuthService _authService = new AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1B262C),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F4C75),
          title: Center(
            child: Text(
              'user',
              style: TextStyle(
                color: const Color(0xffBBE1FA),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  height: 300.0, child: Image.asset('assets/images/logo.png')),
              Container(
                width: 270.0,
                height: 53.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f4c75),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentResults()),
                    );
                  },
                  child: Text(
                    'MY RESULTS',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 27,
                      color: const Color(0xffbbe1fa),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                width: 270.0,
                height: 53.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f4c75),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentNewExam()),
                    );
                  },
                  child: Text(
                    'NEW EXAM',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 27,
                      color: const Color(0xffbbe1fa),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              FlatButton(
                onPressed: () {
                  _authService.signOut();
                },
                child: Text(
                  'LOGOUT',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 14,
                    color: const Color(0xffbbe1fa),
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
