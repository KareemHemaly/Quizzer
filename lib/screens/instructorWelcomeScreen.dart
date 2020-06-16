import 'package:flutter/material.dart';

import 'instructor_subjects.dart';

class InstructorWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1B262C),
        appBar: AppBar(
          backgroundColor: const Color(0xff0F4C75),
          title: Center(
            child: Text(
              'user',
              style: TextStyle(
                color: const Color(0xffBBE1FA),
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Container(
              width: 270.0,
              height: 53.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xff0f4c75),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InstructorSubjects()),
                  );
                },
                child: Text(
                  'My Subjects',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 27,
                    color: const Color(0xffbbe1fa),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'LOGOUT',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xffbbe1fa),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
