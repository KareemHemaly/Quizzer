import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quizzer/models/QuestionScoreModel.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/questionModel.dart';
import 'package:quizzer/models/studentSubjectModel.dart';
import 'package:quizzer/services/auth.dart';

class StudentExam extends StatefulWidget {
  final ExamModel exam;

  StudentExam(this.exam);
  @override
  _StudentExamState createState() => _StudentExamState();
}

class _StudentExamState extends State<StudentExam> {
  List<Widget> questions = new List<Widget>();
  StudentSubjectModel _studentExam = new StudentSubjectModel();
  AuthService _authService = new AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getQuestions();
    _studentExam.questionsScore = [];
    for (var i = 0; i < widget.exam.questions.length; i++) {
      _studentExam.questionsScore.add(new QuestionScoreModel());
    }
    setState(() {
      _studentExam.examId = widget.exam.id;
      _studentExam.subjectId = widget.exam.subjectId;
    });
    getUser();
  }

  getUser() async {
    _authService.getCurrentUser().then((value) => {
          setState(() {
            _studentExam.studentId = value;
          })
        });
  }

  //Prepare Questions
  getQuestions() {
    for (var item in widget.exam.questions) {
      if (item.type == 'mcq') {
        mcqQuestion(item);
      } else {
        essayQuestion(item);
      }
    }
  }

//MCQ QUESTION
  mcqQuestion(QuestionModel questionModel) {
    setState(() {
      questions.add(Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                    // width: 270.0,
                    child: Text(
                      'Q' + questionModel.position.toString() + ': MCQ',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff0f4c75),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Text(
                  'Score: ' + questionModel.maxScore.toString(),
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: const Color(0xff0f4c75),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Question:',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 23,
                      color: const Color(0xff0f4c75),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    width: 254.0,
                    height: 25.0,
                    child: Text(
                      questionModel.question,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 23,
                        color: const Color(0xff0f4c75),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 370.0,
                  child: Text(
                    'Answer:',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 23,
                      color: const Color(0xff0f4c75),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RADIOstatefull(
                    score: questionModel.maxScore,
                    correctAnswer: questionModel.answer,
                    position: questionModel.position,
                    onChangeAnswer: optionsChanger,
                    options: questionModel.typeUtilities),
              ],
            ),
            SizedBox(height: 20.0),
            Divider(
              color: const Color(0xff1B262C),
              height: 1,
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ));
    });
  }

//ESAY QUESTION
  essayQuestion(QuestionModel questionModel) {
    setState(() {
      questions.add(
        Container(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                    // width: 270.0,
                    child: Text(
                      'Q' + questionModel.position.toString() + ': ESSAY',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff0f4c75),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Text(
                  'Score: ' + questionModel.maxScore.toString(),
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: const Color(0xff0f4c75),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Question:',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 23,
                      color: const Color(0xff0f4c75),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    width: 254.0,
                    height: 25.0,
                    child: Text(
                      questionModel.question,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 23,
                        color: const Color(0xff0f4c75),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Answer:',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 23,
                    color: const Color(0xff0f4c75),
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  width: 256.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                  ),
                  child: TextField(
                    onChanged: (val) {
                      essayAnswers(questionModel.position, val);
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Answer',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Divider(
              color: const Color(0xff1B262C),
              height: 1,
            ),
            SizedBox(height: 10.0),
          ],
        )),
      );
    });
  }

  essayAnswers(int position, String answer) {
    setState(() {
      this._studentExam.questionsScore[position - 1].position = position;
      this._studentExam.questionsScore[position - 1].answer = answer;
    });
  }

  optionsChanger(int position, double score, String answer) {
    setState(() {
      this._studentExam.questionsScore[position - 1].position = position;
      this._studentExam.questionsScore[position - 1].answer = answer;
      this._studentExam.questionsScore[position - 1].questionScore = score;
    });
  }

  examSubmition() {
    Object nlpCorrection = new Object();
    List<QuestionScoreModel> questionAnswers = new List<QuestionScoreModel>();
    List<QuestionModel> quesModel = widget.exam.questions
        .where((element) => element.type != "mcq")
        .toList();
    QuestionModel ques;
    questionAnswers = this
        ._studentExam
        .questionsScore
        .where((element) => element.questionScore == null)
        .toList();
    for (var item in questionAnswers) {
      ques = new QuestionModel();
      nlpCorrection = new Object();
      ques =
          quesModel.firstWhere((element) => element.position == item.position);
      nlpCorrection = {
        "questionScore": ques.maxScore,
        "question": ques.question,
        "modelAnswer": ques.answer,
        "keys": ques.typeUtilities,
        "studentAnswer": item.answer
      };
      print(nlpCorrection);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBBE1FA),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B262C),
        title: Center(
          child: Column(
            children: <Widget>[
              Text(
                widget.exam.name,
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
            width: 360.0,
            height: 72.0,
            decoration: BoxDecoration(
              color: const Color(0xff3282b8),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Exam Description: ' + widget.exam.description,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: const Color(0xff1b262c),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: questions.length ?? 0,
                itemBuilder: (context, index) {
                  return questions[index];
                }),
          )),
          SizedBox(height: 20.0),
          Divider(
            color: const Color(0xff1B262C),
            height: 1,
          ),
          SizedBox(height: 10.0),
          Container(
            width: 199.0,
            height: 39.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: const Color(0xff0f4c75),
            ),
            child: FlatButton(
              onPressed: () {
                examSubmition();
                print(this._studentExam);
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
    );
  }
}

enum SingingCharacter { option1, option2, option3, option4 }

class RADIOstatefull extends StatefulWidget {
  final List<dynamic> options;
  final String correctAnswer;
  final int position;
  final Function(int, double, String) onChangeAnswer;
  final int score;

  RADIOstatefull(
      {Key key,
      this.score,
      this.position,
      this.options,
      this.correctAnswer,
      this.onChangeAnswer})
      : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RADIOstatefull> {
  SingingCharacter _character;

  @override
  initState() {
    super.initState();
    // double score =
    //     int.parse(widget.correctAnswer) == 1 ? widget.score.toDouble() : 0.0;
    // widget.onChangeAnswer(widget.position, score, widget.options[0]);
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: ListTile(
                  title: Text(widget.options[0],
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                  leading: Radio(
                    value: SingingCharacter.option1,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                      double score = int.parse(widget.correctAnswer) == 1
                          ? widget.score.toDouble()
                          : 0.0;
                      widget.onChangeAnswer(
                          widget.position, score, widget.options[0]);
                    },
                  ),
                ),
              ),
              // SizedBox(height: 2.0),
              Flexible(
                child: ListTile(
                  title: Text(widget.options[1],
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                  leading: Radio(
                    value: SingingCharacter.option3,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                      double score = int.parse(widget.correctAnswer) == 2
                          ? widget.score.toDouble()
                          : 0.0;
                      widget.onChangeAnswer(
                          widget.position, score, widget.options[1]);
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: ListTile(
                  title: Text(widget.options[2],
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                  leading: Radio(
                    value: SingingCharacter.option2,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                      double score = int.parse(widget.correctAnswer) == 3
                          ? widget.score.toDouble()
                          : 0.0;
                      widget.onChangeAnswer(
                          widget.position, score, widget.options[2]);
                    },
                  ),
                ),
              ),
              // SizedBox(width: 30.0),
              Flexible(
                child: ListTile(
                  title: Text(widget.options[3],
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                  leading: Radio(
                    value: SingingCharacter.option4,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                      double score = int.parse(widget.correctAnswer) == 4
                          ? widget.score as double
                          : 0.0;
                      widget.onChangeAnswer(
                          widget.position, score, widget.options[3]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
