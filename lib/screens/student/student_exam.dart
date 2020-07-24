import 'package:flutter/material.dart';

class StudentExam extends StatelessWidget {
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
                  '"FINAL EXAM" Exam',
                  style: TextStyle(
                    color: const Color(0xff3282B8),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
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
                    'bla bla blabla',
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
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  //############################################# MCQ CONTAINER #############################################
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 270.0,
                              child: Text(
                                'Q1: MCQ',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 15,
                                  color: const Color(0xff0f4c75),
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Text(
                              'Score: 2',
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
                                'bla bla bla:',
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
                            RADIOstatefull(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //############################################### SEPARATOR ###############################################
                  SizedBox(height: 20.0),
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
                          Container(
                            width: 270.0,
                            child: Text(
                              'Q2: ESSAY',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                color: const Color(0xff0f4c75),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text(
                            'Score: 10',
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
                              'bla bla bla:',
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
                                labelText: 'Answer',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),
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
                onPressed: () {},
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
    );
  }
}

enum SingingCharacter { option1, option2, option3, option4 }

class RADIOstatefull extends StatefulWidget {
  RADIOstatefull({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RADIOstatefull> {
  SingingCharacter _character = SingingCharacter.option1;

  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 180.0,
                height: 25.0,
                child: ListTile(
                  title: const Text('OPTION 1',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff3282b8),
                          fontWeight: FontWeight.bold)),
                  leading: Radio(
                    value: SingingCharacter.option1,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 2.0),
              Container(
                width: 180.0,
                height: 25.0,
                child: ListTile(
                  title: const Text('OPTION 3',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff3282b8),
                          fontWeight: FontWeight.bold)),
                  leading: Radio(
                    value: SingingCharacter.option3,
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
          Column(
            children: <Widget>[
              Container(
                width: 180.0,
                height: 25.0,
                child: ListTile(
                  title: const Text('OPTION 2',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff3282b8),
                          fontWeight: FontWeight.bold)),
                  leading: Radio(
                    value: SingingCharacter.option2,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 180.0,
                height: 25.0,
                child: ListTile(
                  title: const Text('OPTION 4',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xff3282b8),
                          fontWeight: FontWeight.bold)),
                  leading: Radio(
                    value: SingingCharacter.option4,
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
        ],
      ),
    );
  }
}
