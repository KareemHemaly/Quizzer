import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/questionModel.dart';

class InstructorViewExam extends StatefulWidget {
  final ExamModel _examModel;

  InstructorViewExam(this._examModel);

  @override
  _InstructorViewExamState createState() => _InstructorViewExamState();
}

class _InstructorViewExamState extends State<InstructorViewExam> {
  List<Widget> questions = new List<Widget>();

  essayQuestion(QuestionModel model) {
    setState(() {
      questions.add(Container(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Q' + model.position.toString() + ': ESSAY',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xff0f4c75),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
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
                  model.question,
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
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: const Color(0xff0f4c75),
                  ),
                  children: [
                    TextSpan(
                      text: 'Key Words:\n',
                    ),
                    TextSpan(
                      text: 'separate by (-)',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 254.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0x5cffffff),
                ),
                child: Text(
                  model.typeUtilities.join('-'),
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
                width: 254.0,
                height: 25.0,
                child: Text(
                  model.answer,
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
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Score:',
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
                  model.maxScore.toString(),
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
          SizedBox(height: 10.0),
          Divider(
            color: const Color(0xff1B262C),
            height: 1,
          ),
          SizedBox(height: 10.0),
          // SizedBox(height: 5.0),
        ],
      )));
    });
  }

  mcqQuestion(QuestionModel model) {
    setState(() {
      questions.add(Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Q' + model.position.toString() + 'MCQ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 20,
                    color: const Color(0xff0f4c75),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
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
                    model.question,
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
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Choices:',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 23,
                    color: const Color(0xff0f4c75),
                  ),
                  textAlign: TextAlign.left,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 113.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0x5cffffff),
                      ),
                      child: Text(
                        model.typeUtilities[0],
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 23,
                          color: const Color(0xff0f4c75),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Container(
                      width: 113.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0x5cffffff),
                      ),
                      child: Text(
                        model.typeUtilities[2],
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
                Column(
                  children: <Widget>[
                    Container(
                      width: 113.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0x5cffffff),
                      ),
                      child: Text(
                        model.typeUtilities[1],
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 23,
                          color: const Color(0xff0f4c75),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Container(
                      width: 113.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0x5cffffff),
                      ),
                      child: Text(
                        model.typeUtilities[3],
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
              ],
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
                  width: 254.0,
                  height: 25.0,
                  child: Text(
                    model.answer,
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
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Score:',
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
                    model.maxScore.toString(),
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
            SizedBox(height: 10.0),
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

  fillQuestions() {
    for (var item in widget._examModel.questions) {
      if (item.type == 'mcq') {
        mcqQuestion(item);
      } else {
        essayQuestion(item);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fillQuestions();
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
                widget._examModel.name,
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
                  'Exam description:',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: const Color(0xff1b262c),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  widget._examModel.description,
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 23,
                    color: const Color(0xff1b262c),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: questions.length ?? 0,
                          itemBuilder: (context, index) {
                            return this.questions[index];
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
