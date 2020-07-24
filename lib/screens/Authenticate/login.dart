import 'package:flutter/material.dart';
import 'package:quizzer/Theme/theme.dart';
import 'package:quizzer/screens/Authenticate/registration.dart';
import 'package:quizzer/screens/instructor/instructor_subjects.dart';
import 'package:quizzer/services/auth.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _authService = new AuthService();

  String userName;
  String pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b262c),
      body: Container(
          child: Form(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Image(
              image: AssetImage("assets/images/logo.png"),
              width: 100.0,
              height: 300.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                  child: Text(
                    "Username: ",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: const Color(0xff3282b8),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  height: 30.0,
                  width: 250.0,
                  child: TextFormField(
                    decoration: textInputDecoration,
                    validator: (val) => val.isEmpty ? 'enter UserName' : null,
                    onChanged: (val) {
                      setState(() {
                        userName = val;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                new Flexible(
                    child: new Container(
                  padding: EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                  child: Text(
                    "Password: ",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: Color(0xff3282b8),
                    ),
                  
                  ),
                )),
                new Container(
                  padding: EdgeInsets.fromLTRB(21.0, 0, 0, 0),
                  height: 30.0,
                  width: 255.0,
                  child: TextFormField(
                    decoration: textInputDecoration,
                    validator: (val) => val.isEmpty ? 'enter password' : null,
                    onChanged: (val) {
                      setState(() {
                        pass = val;
                      });
                    },
                    obscureText: true,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(100.0, 0, 100.0, 0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40.0)),
                  color: Color(0xff3282b8),
                  child: Text("LOGIN",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xffbbe1fa),
                        fontWeight: FontWeight.w700,
                      )),
                  onPressed: () async {
                    var result = await _authService.signInWithEmailAndPassword(
                        this.userName, this.pass);
                    // if (result != null) {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => InstructorSubjects()));
                    // }
                  },
                )),
            Container(
                padding: EdgeInsets.fromLTRB(170.0, 15.0, 0, 0),
                child: GestureDetector(
                    onTap: () {
                      print("SIGN UP Pressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()));
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 17,
                        color: const Color(0xffbbe1fa),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    )))
          ],
        ),
      )),
    );
  }
}
