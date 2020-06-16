import 'package:flutter/material.dart';

import 'instructor_newExam.dart';

class InstructorExamGrades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffBBE1FA),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B262C),
          title: Center(
            child: Text(
              '"Final Exam" Grades',
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
                      'user1',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 33,
                        color: const Color(0xff0f4c75),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text(
                      '18/20',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff0f752a),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'student2',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 33,
                        color: const Color(0xff0f4c75),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text(
                      '7/20',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xffab1a1a),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            
            ],
          ),
        ),
        
      ),
    );
  }
}
