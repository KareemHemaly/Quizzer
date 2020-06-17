import 'package:flutter/material.dart';

import 'instructor_newExamCont.dart';

class InstructorNewExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1B262C),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F4C75),
          title: Center(
            child: Text(
              'Subject: "English"',
              style: TextStyle(
                color: const Color(0xffBBE1FA),
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Exam Name:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 23,
                      color: const Color(0xff3282b8),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                width: 318.0,
                height: 39.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffbbe1fa),
                ),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Exam Description:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 23,
                      color: const Color(0xff3282b8),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Container(
                  width: 318.0,
                  height: 239.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffbbe1fa),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 199.0,
                height: 39.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f4c75),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstructorNewExamCont()),
                    );
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 27,
                      color: const Color(0xffbbe1fa),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
