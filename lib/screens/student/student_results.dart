import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/services/examService.dart';
import 'package:quizzer/services/studentService.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzer/viewModel/studentScoreViewMode.dart';

class StudentResults extends StatefulWidget {
  @override
  _StudentResultsState createState() => _StudentResultsState();
}

class _StudentResultsState extends State<StudentResults> {
//exam
  final ExamService _examService = new ExamService();
  List<ExamModel> _exam = new List<ExamModel>();
  List<StudentScoreViewModel> studentViewModel =
      new List<StudentScoreViewModel>();

  //student
  final StudentService _studentExamService = new StudentService();
  List<StudentSubjectModel> _studentExams = new List<StudentSubjectModel>();

  getData() async {
    StudentScoreViewModel st;
    _studentExamService
        .getStudentSbujectModelByID('hRgc93UwVD6horldHVHZ')
        .then((value) => {
              setState(() {
                _studentExams = value;
                for (var item in _studentExams) {
                  st = new StudentScoreViewModel();
                  _examService.getByID(item.examId).then((exam) {
                    if (exam.id != null) {
                      st.studentSubject = item;
                      st.exam = exam;
                      studentViewModel.add(st);
                    }
                  });
                }
              })
            });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getInstractors();
    getData();

    // getSubjects('KareemHemaly');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffBBE1FA),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B262C),
          title: Center(
            child: Text(
              'My Results',
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
              Flexible(
                child: ListView.builder(
                  itemCount: this.studentViewModel.length ?? 0,
                  itemBuilder: (BuildContext context, index) {
                    return this.studentViewModel == null
                        ? SpinKitWanderingCubes(color: Color(0xff0f4c75))
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      'Math / instructor',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 12,
                                        color: const Color(0xff0f4c75),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  FlatButton(
                                    child: Text(
                                      studentViewModel[index].exam.name,
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 33,
                                        color: const Color(0xff0f4c75),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              FlatButton(
                                child: Text(
                                  studentViewModel[index].studentSubject.score +
                                      '/' +
                                      studentViewModel[index]
                                          .exam
                                          .maxScore
                                          .toString(),
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 25,
                                    color: const Color(0xff0f752a),
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          );
                  },
                ),
              ),

              // color: const Color(0xffab1a1a),
            ],
          ),
        ),
      ),
    );
  }
}
