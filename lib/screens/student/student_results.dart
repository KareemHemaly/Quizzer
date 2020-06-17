import 'package:flutter/material.dart';

class StudentResults extends StatelessWidget {
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
                      '4/10',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 25,
                        color: const Color(0xffab1a1a),
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
