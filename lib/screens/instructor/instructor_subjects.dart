import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzer/models/subject.dart';
import 'package:quizzer/services/auth.dart';
import 'package:quizzer/services/subjectService.dart';

import 'instructor_subjectExams.dart';

class InstructorSubjects extends StatefulWidget {
  @override
  _InstructorSubjectsState createState() => _InstructorSubjectsState();
}

class _InstructorSubjectsState extends State<InstructorSubjects> {
  String _subjectName;
  final SubjectService _subjectService = new SubjectService();
  SubjectModel _model = new SubjectModel();
  List<SubjectModel> _subjects = new List<SubjectModel>();
  bool dataInProgress = true;
  final AuthService _authService = new AuthService();
  String userId;

  getSubjects() async {
    _subjectService.get().then((value) => {
          setState(() {
            _subjects = value;
            dataInProgress = false;
          })
        });
  }

  getInstructorId() async {
    _authService.getCurrentUser().then((value) => {
          this.setState(() {
            userId = value;
          })
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSubjects();
    getInstructorId();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBBE1FA),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B262C),
        title: Center(
          child: Text(
            'My Subjects',
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
          : Column(
              children: [
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: this._subjects.length ?? 0,
                      itemBuilder: (BuildContext context, index) {
                        return this._subjects == null
                            ? SpinKitWanderingCubes(color: Color(0xff0f4c75))
                            : Column(
                                children: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      this._subjects[index].name,
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
                                            builder: (context) =>
                                                InstructorSubjectsExams(
                                                    subject:
                                                        this._subjects[index])),
                                      );
                                    },
                                  ),
                                ],
                              );
                      },
                    ),
                  ),
                ),
                BottomAppBar(
                  color: const Color(0xffBBE1FA),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            backgroundColor: const Color(0xff0f752a),
                            heroTag: "btn1",
                            child: Icon(
                              Icons.arrow_right,
                              color: const Color(0xffBBE1FA),
                            ),
                            onPressed: () async {
                              await _authService.signOut();
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: FloatingActionButton(
                            heroTag: "btn2",
                            backgroundColor: const Color(0xff1B262C),
                            child: Icon(
                              Icons.add,
                              color: const Color(0xff3282B8),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context, builder: buildBottomSheet);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(0xff1B262C),
      //   child: Icon(
      //     Icons.add,
      //     color: const Color(0xff3282B8),
      //   ),
      //   onPressed: () {
      //     showModalBottomSheet(context: context, builder: buildBottomSheet);
      //   },
      // ),
    );
  }

  Widget buildBottomSheet(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                color: Color(0xFF737373),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(27.0),
                      topRight: const Radius.circular(27.0),
                    ),
                    color: const Color(0xff1b262c),
                  ),
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Subject Name:',
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
                            labelText: 'subject',
                          ),
                          onChanged: (val) {
                            setState(() {
                              _subjectName = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 190.0,
                        height: 39.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: const Color(0xff0f4c75),
                        ),
                        child: FlatButton(
                          onPressed: () async {
                            if (_subjectName.isNotEmpty) {
                              _model.name = _subjectName;
                              _model.instructorId = this.userId;
                              var result = await _subjectService.add(_model);
                              if (result != null) {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                Navigator.pop(context);
                                await getSubjects();
                              }
                            }
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
            ),
          ],
        ),
      );
}
