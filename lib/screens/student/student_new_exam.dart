import 'package:flutter/material.dart';

class StudentNewExam extends StatelessWidget {
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
                        width: 200.0,
                        child: MycomboBox()),
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
                      Container(width: 200.0,child: MycomboBox()),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
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
                              'Final Exam',
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
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              'English / instructor',
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
                              'week 4 quiz',
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
                          'Take Quiz',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 25,
                            color: const Color(0xff1b262c),
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MycomboBox extends StatefulWidget {
  MycomboBox({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MycomboBox> {
  String dropdownValue = 'One';

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
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
