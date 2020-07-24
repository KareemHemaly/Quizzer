import 'package:firebase_auth/firebase_auth.dart';
import 'package:quizzer/models/userModel.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  Stream<User> currentUSer() {
    return Stream.fromFuture(_auth.currentUser()).map(_userFromFirebaseUser);
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String username, String password) async {
    try {
      username += "@gmail.com";
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: username, password: password);
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      print("registiration with email= $email and password= $password");

      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(result);
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future regiseterWithUserNameAndPassword(
      String username, String password) async {
    try {
      username += "@gmail.com";
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: username, password: password);
      print(result);
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
