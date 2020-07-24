import 'package:flutter/material.dart';
import 'package:quizzer/models/examModel.dart';
import 'package:quizzer/models/questionModel.dart';
import 'package:quizzer/screens/instructor/instructor_subjects.dart';
import 'package:quizzer/services/examService.dart';

import 'instructor_subjectExams.dart';

class InstructorNewExamCont extends StatefulWidget {
  final ExamModel examModel;
  @override
  _InstructorNewExamContState createState() => _InstructorNewExamContState();
  InstructorNewExamCont(this.examModel);
}

class _InstructorNewExamContState extends State<InstructorNewExamCont> {
  List<Widget> questions = new List<Widget>();
  ExamModel _examModel = new ExamModel();
  List<TextEditingController> _controllers = new List<TextEditingController>();
  List<String> _questionsType = new List<String>();
  ExamService _examService = new ExamService();

  void essayQuestion() {
    int contLength = _controllers.length;
    for (int i = 0; i < 4; i++) _controllers.add(TextEditingController());
    setState(() {
      _questionsType.add("essay");
      questions.add(Container(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Q' + (questions.length + 1).toString() + ': ESSAY',
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
          SizedBox(
            height: 10.0,
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
                width: 256.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffffffff),
                ),
                child: TextField(
                  controller: _controllers[contLength],
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Question',
                  ),
                  onChanged: (val) {
                    setState(() {});
                  },
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
                width: 256.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffffffff),
                ),
                child: TextField(
                  controller: _controllers[contLength + 1],
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'key1-key2-key3',
                  ),
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
                width: 256.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffffffff),
                ),
                child: TextField(
                  controller: _controllers[contLength + 2],
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Model Answer',
                  ),
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
                width: 256.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffffffff),
                ),
                child: TextField(
                  controller: _controllers[contLength + 3],
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Essay Score',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Divider(
            color: const Color(0xff1B262C),
            height: 1,
          ),
          // SizedBox(height: 10.0),
        ],
      )));
    });
  }

  void mcqQuestion() {
    int contLength = _controllers.length;
    for (int i = 0; i < 7; i++) _controllers.add(TextEditingController());
    setState(() {
      _questionsType.add("mcq");
      questions.add(Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Q' + (questions.length + 1).toString() + ': MCQ',
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
            SizedBox(height: 10.0),
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
                  width: 256.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Question',
                    ),
                    controller: _controllers[contLength],
                    onChanged: (val) {},
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
                      width: 115.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                      ),
                      child: TextField(
                        controller: _controllers[contLength + 1],
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '1',
                        ),
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Container(
                      width: 115.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                      ),
                      child: TextField(
                        controller: _controllers[contLength + 2],
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '3',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 115.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                      ),
                      child: TextField(
                        controller: _controllers[contLength + 3],
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '2',
                        ),
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Container(
                      width: 115.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                      ),
                      child: TextField(
                        controller: _controllers[contLength + 4],
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '4',
                        ),
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
                  width: 256.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                  ),
                  child: TextField(
                    controller: _controllers[contLength + 5],
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Choice number',
                    ),
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
                  width: 256.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                  ),
                  child: TextField(
                    controller: _controllers[contLength + 6],
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'MCQ Score',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Divider(
              color: const Color(0xff1B262C),
              height: 1,
            ),
            // SizedBox(height: 10.0),
          ],
        ),
      ));
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void addQuestion(type) {
    if (type == SingingCharacter.mcq) {
      mcqQuestion();
    } else {
      essayQuestion();
    }
  }

  submitQuestionsData() {
    int index = 0;
    int count = 0;
    List<QuestionModel> questionModels = new List<QuestionModel>();
    QuestionModel questionModel;
    int maxExamScore = 0;
    for (var i = 0; i < _questionsType.length; i++) {
      questionModel = new QuestionModel();
      questionModel.typeUtilities = [];
      if (_questionsType[i] != 'mcq') {
        count = 4;
        List<String> keys = _controllers[index + 1].text.split('-');
        for (var key in keys) {
          questionModel.typeUtilities.add(key);
        }
        questionModel.position = i + 1;
        questionModel.question = _controllers[index].text;
        questionModel.answer = _controllers[index + 2].text;
        questionModel.maxScore = int.parse(_controllers[index + 3].text);
        questionModel.type = "essay";
      } else {
        count = 7;
        for (int ans = index + 1, coun = 0; coun < 4; ans++, coun++) {
          questionModel.typeUtilities.add(_controllers[ans].text);
        }
        questionModel.position = i + 1;
        questionModel.question = _controllers[index].text;
        questionModel.answer = _controllers[index + 5].text;
        questionModel.maxScore = int.parse(_controllers[index + 6].text);
        questionModel.type = "mcq";
      }
      maxExamScore += questionModel.maxScore;
      index += count;
      questionModels.add(questionModel);
    }
    setState(() {
      _examModel.maxScore = maxExamScore;
      _examModel.name = widget.examModel.name;
      _examModel.description = widget.examModel.description;
      _examModel.subjectId = widget.examModel.subjectId;
      _examModel.questions = questionModels;
    });
    _examService.create(this._examModel).then((value) {
      if (value != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => InstructorSubjects()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBBE1FA),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B262C),
        title: Center(
          child: Text(
            '"Mid-term exam" Exam',
            style: TextStyle(
              color: const Color(0xff3282B8),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: this.questions.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.all(20.0),
                    child: this.questions[index]);
              },
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
                        Icons.check,
                        color: const Color(0xffBBE1FA),
                      ),
                      onPressed: () {
                        submitQuestionsData();
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => InstructorSubjectsExams()),
                        // );
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
    );
  }

  Widget buildBottomSheet(BuildContext context) => Container(
        color: Color(0xFF737373),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(27.0),
              topRight: const Radius.circular(27.0),
            ),
            color: const Color(0xff1b262c),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: RADIOstatefull(
                  addQuestion: this.addQuestion,
                ),
              ),
            ],
          ),
        ),
      );
}

enum SingingCharacter { mcq, essay }

class RADIOstatefull extends StatefulWidget {
  final Function addQuestion;
  RADIOstatefull({Key key, this.addQuestion}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RADIOstatefull> {
  SingingCharacter _character = SingingCharacter.mcq;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Flexible(
              child: ListTile(
                title: const Text('MCQ',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color(0xff3282b8),
                        fontWeight: FontWeight.bold)),
                leading: Radio(
                  value: SingingCharacter.mcq,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: const Text('ESSAY',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color(0xff3282b8),
                        fontWeight: FontWeight.bold)),
                leading: Radio(
                  value: SingingCharacter.essay,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: const Color(0xff0f4c75),
            ),
            child: FlatButton(
              onPressed: () {
                widget.addQuestion(_character);
                Navigator.pop(context);
              },
              child: Text(
                'NEW QUESTION',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xffbbe1fa),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
      ],
    );
  }
}
