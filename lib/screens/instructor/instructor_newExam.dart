import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';

import 'instructor_newExamCont.dart';

class InstructorNewExam extends StatefulWidget {
  final String subjectId;

  InstructorNewExam(this.subjectId);
  @override
  _InstructorNewExamState createState() => _InstructorNewExamState();
}

class _InstructorNewExamState extends State<InstructorNewExam> {
  ExamModel _examModel = new ExamModel();

  @override
  void initState() {
    super.initState();
    setState(() {
      _examModel.subjectId = widget.subjectId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1B262C),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F4C75),
          title: Center(
            child: Text(
              "Add Exam",
              style: TextStyle(
                color: const Color(0xffBBE1FA),
              ),
            ),
          ),
        ),
        body:
            // padding: const EdgeInsets.all(50.0),
            ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Exam Name:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 23,
                        color: const Color(0xff3282b8),
                        fontWeight: FontWeight.w700,
                      ),
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
                    // errorBorder: InputBorder(borderSide: ),
                    // errorText: "Invalid Name"
                  ),
                  onChanged: (value) {
                    setState(() {
                      _examModel.name = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Exam Description:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 23,
                        color: const Color(0xff3282b8),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 318.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffbbe1fa),
                ),
                child: TextField(
                  maxLines: 6,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                  onChanged: (val) {
                    setState(() {
                      _examModel.description = val;
                    });
                  },
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f4c75),
                ),
                child: FlatButton(
                  onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InstructorNewExamCont(_examModel)),
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
        ]),
      ),
    );
  }
}
