import 'package:flutter/material.dart';

class ViewUserGrade extends StatelessWidget {
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
                  'aly1997 Grade in "Final Exam"',
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
              padding: const EdgeInsets.all(5.0),
              width: 360.0,
              height: 72.0,
              decoration: BoxDecoration(
                color: const Color(0xff3282b8),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
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
                  Container(
                    child: Text(
                      '18/20',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 28,
                        color: const Color(0xff1b262c),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
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
                                    'option 1',
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
                                    color: const Color(0x5c0f752a),
                                  ),
                                  child: Text(
                                    'option 3',
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
                                    'option 2',
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
                                    'option4',
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
                                '2/2',
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
                              '4.5/10',
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
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
