import 'package:flutter/material.dart';

import 'instructor_examGrades.dart';
import 'instructor_newExam.dart';
import 'instructor_viewExam.dart';

class InstructorSubjectsExams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffBBE1FA),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B262C),
          title: Center(
            child: Text(
              'Subject "English" Exams',
              style: TextStyle(
                color: const Color(0xff3282B8),
              ),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Final Exam',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 33,
                        color: const Color(0xff0f4c75),
                      ),
                      textAlign: TextAlign.left,
                    ),
                   onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InstructorViewExam(),
                          ));
                    },
                  ),
                  FlatButton(
                    child: Text(
                      'RESULTS',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff1b262c),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InstructorExamGrades(),
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1B262C),
          child: Icon(
            Icons.add,
            color: const Color(0xff3282B8),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InstructorNewExam(),
                ));
          },
        ),
      ),
    );
  }
}
