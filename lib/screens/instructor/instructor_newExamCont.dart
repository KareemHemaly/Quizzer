import 'package:flutter/material.dart';

import 'instructor_subjectExams.dart';

class InstructorNewExamCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffBBE1FA),
        appBar: AppBar(
          backgroundColor: const Color(0xff1B262C),
          title: Center(
            child: Text(
              '"Mid term exam" Exam',
              style: TextStyle(
                color: const Color(0xff3282B8),
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    //############################################# MCQ CONTAINER #############################################
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Q1: MCQ',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 15,
                                  color: const Color(0xff0f4c75),
                                  fontWeight: FontWeight.w900,
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
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'MCQ Score',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //############################################### SEPARATOR ###############################################
                    SizedBox(height: 10.0),
                    Divider(
                      color: const Color(0xff1B262C),
                      height: 1,
                    ),
                    SizedBox(height: 10.0),
                    //############################################ ESSAY CONTAINER ############################################
                    Container(
                        child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Q2: ESSAY',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                color: const Color(0xff0f4c75),
                                fontWeight: FontWeight.w900,
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
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Essay Score',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorSubjectsExams()),
                        );
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
          ],
        ),
        /*  floatingActionButton: 
        FloatingActionButton(
          backgroundColor: const Color(0xff1B262C),
          child: Icon(
            Icons.add,
            color: const Color(0xff3282B8),
          ),
          onPressed: () {
            showModalBottomSheet(context: context, builder: buildBottomSheet);
          },
        ),*/
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
                child: RADIOstatefull(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f4c75),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstructorNewExamCont()),
                    );
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
              SizedBox(
                  height:
                      5.0), /*
              Container(
                width: 199.0,
                height: 39.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff0f752a),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstructorSubjectsExams()),
                    );
                  },
                  child: Text(
                    'FINISH',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: const Color(0xffbbe1fa),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      );
}

enum SingingCharacter { mcq, essay }

class RADIOstatefull extends StatefulWidget {
  RADIOstatefull({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RADIOstatefull> {
  SingingCharacter _character = SingingCharacter.mcq;

  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
