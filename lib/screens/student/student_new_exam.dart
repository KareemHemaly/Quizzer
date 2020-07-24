import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/models/subject.dart';
import 'package:quizzer/models/userDetailModel.dart';
import 'package:quizzer/services/examService.dart';
import 'package:quizzer/services/instructorService.dart';
import 'package:quizzer/services/studentService.dart';
import 'package:quizzer/services/subjectService.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzer/viewModel/studentScoreViewMode.dart';

class StudentNewExam extends StatefulWidget {
  @override
  _StudentNewExamState createState() => _StudentNewExamState();
}

class _StudentNewExamState extends State<StudentNewExam> {






  //INSTRUCTOR
  final InstructorsService _instructorsService = new InstructorsService();
  List<UserDetail> _instructors = new List<UserDetail>();
  bool dataInProgress = true;
  List<String> instructorNames = [];
  getInstractors() async {}

  //subjects
  final SubjectService _subjectService = new SubjectService();
  List<SubjectModel> _subjects = new List<SubjectModel>();
  List<SubjectModel> filteredSubjects = new List<SubjectModel>();

  List<String> subjectNames = [];

//exam
  final ExamService _examService = new ExamService();
  List<ExamModel> _exams = new List<ExamModel>();
  List<ExamModel> filteredexams = new List<ExamModel>();

 //student
  final StudentService _studentExamService = new StudentService();
  List<StudentSubjectModel> _studentExams = new List<StudentSubjectModel>();


  getDropdownsData() async {
    _instructorsService.getInstructors().then((value) => {
          setState(() {
            _instructors = value;
            instructorNames = _instructors.map((e) => e.userName).toList();
            dataInProgress = false;
          })
        });

    _subjectService.get().then((data) => {
          this.setState(() {
            _subjects = data;
            subjectNames = _subjects.map((e) => e.name).toList();
          })
        });

    


  }

  getExamData()
  {
    _examService.get().then((data) => {
          this.setState(() {
            _exams = data;
          })
        });

        _studentExamService.getStudentSbujectModelByID('hRgc93UwVD6horldHVHZ').then((value) => {
          setState(() {
            _studentExams = value;
          })
        });
  }


  // getSubjects(String userName) async {
  //   setState(() async {
  //     String _intructorID;
  //     for (var i = 0; i < _instructors.length; i++) {
  //       if (userName == _instructors[i].userName) {
  //         _intructorID = _instructors[i].id;
  //       }
  //     }

  //     var result = await _subjectService.getByinstId(_intructorID);
  //     _subjects = result;
  //     for (var i = 0; i < _subjects.length; i++) {
  //       subjectNames.add(_subjects[i].name);
  //       print(subjectNames[i]);
  //     }

  //     dataInProgress = false;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getInstractors();
    getDropdownsData();
    getExamData();

    // getSubjects('KareemHemaly');
  }

  instructorChanged(String instructorName) {
    var instructorId = _instructors
        .firstWhere((element) => element.userName == instructorName)
        .id;

    setState(() {
      filteredSubjects = new List<SubjectModel>();
      filteredSubjects = _subjects
          .where((element) => element.instructorId == instructorId)
          .toList();
      subjectNames = new List<String>();
      subjectNames = filteredSubjects.map((e) => e.name).toList();
    });
    subjectChanged(subjectNames[0]);
    subjectChanged('Math');
  }

    List<StudentScoreViewModel> scoreViewModel = new List<StudentScoreViewModel>();

  subjectChanged(String subjectName) {
    var subjectId =
        _subjects.firstWhere((element) => element.name == subjectName).id;
StudentScoreViewModel st ;
    
    setState(() {
      filteredexams = new List<ExamModel>();
      filteredexams =
          _exams.where((element) => element.subjectId == subjectId).toList();

          scoreViewModel  = new List<StudentScoreViewModel>();
      //  subjectNames = new List<String>();
      //  subjectNames = filteredSubjects.map((e) => e.name).toList();
    });
    for (var item in filteredexams) {
      st = new StudentScoreViewModel(); 
      st.exam = item;
      st.studentSubject = _studentExams.firstWhere((element) => element.examId == item.id, orElse: ()=>null) ;
      setState(() {
        scoreViewModel.add(st);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffBBE1FA),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B262C),
          title: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'NEW EXAM',
                  style: TextStyle(
                    color: const Color(0xff3282B8),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(7.0),
              width: 360.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: const Color(0xff3282b8),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Instructor:',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 15,
                            color: const Color(0xff1b262c),
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                          child:
                              MycomboBox(instructorNames, instructorChanged)),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Subject:',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 15,
                            color: const Color(0xff1b262c),
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                          child: MycomboBox(subjectNames, subjectChanged)),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
                          child: Container(
                margin: const EdgeInsets.all(10.0),
                child: ListView.builder(
          itemCount: this.scoreViewModel.length ?? 0,
          itemBuilder: (BuildContext context, index) {
              return this._exams == null
                  ? SpinKitWanderingCubes(color: Color(0xff0f4c75))
                  : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                child: Text(
                                 this.scoreViewModel[index].exam.name,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: const Color(0xff0f4c75),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                onPressed: () {},
                              ),
                              scoreViewModel[index].studentSubject == null ?
                              FlatButton(
                                child: Text(
                                   'Take Exam' ,
                               //   scoreViewModel[index].studentSubject.score.toString() + '/' + scoreViewModel[index].exam.maxScore.toString(),
                                  //_studentExams.firstWhere((element) => element.examId == this.filteredexams[index].id).score.toString() + '/' + this.filteredexams[index].maxScore.toString() ,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                onPressed: () {},
                              )
                              :
                              Text(
                                  // 'Take Exam' ,
                                 scoreViewModel[index].studentSubject.score.toString() + '/' + scoreViewModel[index].exam.maxScore.toString(),
                                  //_studentExams.firstWhere((element) => element.examId == this.filteredexams[index].id).score.toString() + '/' + this.filteredexams[index].maxScore.toString() ,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: scoreViewModel[index].studentSubject.score < (scoreViewModel[index].exam.maxScore / 2)
                            ? Color(0xffab1a1a)
                            : Color(0xff0f752a),
                                    fontWeight: FontWeight.w700,
                                    
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                            ],
                          );
                  }),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MycomboBox extends StatefulWidget {
  final List<String> strs;
  //final int flag;
  final Function(String) dropdownChanged;
  MycomboBox(this.strs, this.dropdownChanged, {Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MycomboBox> {
  String dropdownValue = 'none';

  @override
  void initState() {
    super.initState();
    setState(() {
      dropdownValue = widget.strs[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      elevation: 16,
      style: TextStyle(color: const Color(0xff1b262c)),
      underline: Container(
        height: 2,
        color: const Color(0xff0f4c75),
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
        widget.dropdownChanged(newValue);
      },
      items: widget.strs.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
