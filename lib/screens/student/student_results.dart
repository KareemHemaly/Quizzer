import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/services/examService.dart';
import 'package:quizzer/services/studentService.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StudentResults extends StatefulWidget {
  @override
  _StudentResultsState createState() => _StudentResultsState();
}

class _StudentResultsState extends State<StudentResults> {
//exam
  final ExamService _examService = new ExamService();
  List<ExamModel> _exam = new List<ExamModel>();

  //student
  final StudentService _studentExamService = new StudentService();
  List<StudentSubjectModel> _studentExams = new List<StudentSubjectModel>();

  getData() async {
    _studentExamService
        .getStudentSbujectModelByID('hRgc93UwVD6horldHVHZ')
        .then((value) => {
              setState(() {
                _studentExams = value;
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
                  itemCount: this._studentExams.length ?? 0,
                  itemBuilder: (BuildContext context, index) {
                    _examService.getByID(_studentExams[index].examId).then((value) => _exam = value); 
                    return this._studentExams == null
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
                                     _exam[0].name ,
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
                                  '18/20',
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1B262C),
          child: Icon(
            Icons.add,
            color: const Color(0xff3282B8),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
