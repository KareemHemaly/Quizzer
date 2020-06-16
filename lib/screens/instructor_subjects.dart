import 'package:flutter/material.dart';

class InstructorSubjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1B262C),
          child: Icon(
            Icons.add,
            color: const Color(0xff3282B8),
          ),
          onPressed: () {
            showModalBottomSheet(context: context, builder: buildBottomSheet);
          },
        ),
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) => Container(
        child: Container(
          color: Color(0xFF737373),
          child: Container(
            height: 250.0,
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
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'subject',
                    ),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InstructorSubjects()),
                      );
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
      );
}
