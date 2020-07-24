import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/services/studentService.dart';
import 'package:quizzer/viewModel/studentScoreViewMode.dart';


class InstructorExamGrades extends StatefulWidget {
  @override
  _InstructorExamGradesState createState() => _InstructorExamGradesState();
  ExamModel exam;
  InstructorExamGrades({this.exam});
}

class _InstructorExamGradesState extends State<InstructorExamGrades> {
  List<StudentScoreViewModel> studentsScore = new List<StudentScoreViewModel>();
  final StudentService _studentService = new StudentService();
  bool dataInProgress = true;

  getStudentResults() async {
    var result = await _studentService.getByexamId(widget.exam.id);
    StudentScoreViewModel model;

    var st = await _studentService.getStudents();

    for (var item in result) {
      model = new StudentScoreViewModel();
      model.studentSubject = item;
      model.student = st.firstWhere((element) => element.id == item.studentId);
      model.exam = widget.exam;
      setState(() {
        studentsScore.add(model);
        dataInProgress = false;
      });
    }
    setState(() {
      dataInProgress = false;
    });
  }

  @override
  void initState() {
    super.initState();
    this.getStudentResults();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: dataInProgress
          ? SpinKitDoubleBounce(
              color: Color(0xff3282B8),
            )
          : ListView.builder(
              itemCount: studentsScore.length ?? 0,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        studentsScore[index].student.userName,
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 33,
                          color: const Color(0xff0f4c75),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      trailing: FlatButton(
                        child: Text(
                          studentsScore[index].studentSubject.score.toString() +
                              "/" +
                              studentsScore[index].exam.maxScore.toString(),
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20,
                            color: studentsScore[index].studentSubject.score <
                                    studentsScore[index].exam.maxScore / 2
                                ? Color(0xffab1a1a)
                                : Color(0xff0f752a),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     FlatButton(
                    //       child: Text(
                    //         'student2',
                    //         style: TextStyle(
                    //           fontFamily: 'Arial',
                    //           fontSize: 33,
                    //           color: const Color(0xff0f4c75),
                    //         ),
                    //         textAlign: TextAlign.left,
                    //       ),
                    //       onPressed: () {},
                    //     ),
                    //     FlatButton(
                    //       child: Text(
                    //         '7/20',
                    //         style: TextStyle(
                    //           fontFamily: 'Arial',
                    //           fontSize: 14,
                    //           color: const Color(0xffab1a1a),
                    //           fontWeight: FontWeight.w700,
                    //           decoration: TextDecoration.underline,
                    //         ),
                    //         textAlign: TextAlign.left,
                    //       ),
                    //       onPressed: () {},
                    //     ),
                    //   ],
                    // ),
                  ],
                );
              }),
    );
  }
}
