import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/subject.dart';
import 'package:quizzer/services/examService.dart';

import 'instructor_examGrades.dart';
import 'instructor_newExam.dart';
import 'instructor_viewExam.dart';

class InstructorSubjectsExams extends StatefulWidget {
  @override
  _InstructorSubjectsExamsState createState() =>
      _InstructorSubjectsExamsState();

  final SubjectModel subject;

  InstructorSubjectsExams({this.subject});
}

class _InstructorSubjectsExamsState extends State<InstructorSubjectsExams> {
  List<ExamModel> _exams = new List<ExamModel>();
  final ExamService _examService = new ExamService();
  bool dataInProgress = true;

  getExams() async {
    _examService.getData(widget.subject.id).then((value) => {
          this.setState(() {
            _exams = value;
            dataInProgress = false;
          })
        });
  }

  @override
  void initState() {
    super.initState();
    this.getExams();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBBE1FA),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B262C),
        title: Text(
          widget.subject.name + ' Exams',
          style: TextStyle(
            color: const Color(0xff3282B8),
          ),
        ),
      ),
      body: dataInProgress
          ? SpinKitDoubleBounce(
              color: Color(0xff3282B8),
            )
          : ListView.builder(
              itemCount: _exams.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: ListTile(
                            title: Text(
                              _exams[index].name,
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 33,
                                color: const Color(0xff0f4c75),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            subtitle: Text(_exams[index].description),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InstructorViewExam(_exams[index]),
                                  ));
                            },
                            trailing: FlatButton(
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
                                      builder: (context) =>
                                          InstructorExamGrades(
                                              exam: _exams[index]),
                                    ));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1B262C),
        child: Icon(
          Icons.add,
          color: const Color(0xff3282B8),
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => InstructorNewExam(widget.subject.id),
              ));
        },
      ),
    );
  }
}
