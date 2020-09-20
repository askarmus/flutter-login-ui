import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEDF3F8),
        body: ListView(
          children: [
            ShapeOfView(
                shape: ArcShape(height: 60, position: ArcPosition.Bottom),
                child: Image.asset("assets/images/login-top.jpg",
                    height: 150, fit: BoxFit.cover)),
            SizedBox(height: 40),
            Center(
              child: Text("Trippy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color(0xFFF22547E))),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: RoundedInput(
                hintText: "Email",
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: RoundedInput(
                hintText: "Password",
              ),
            ),
            SizedBox(height: 30),
            FlatButton(
              onPressed: null,
              child: Container(
                  padding: EdgeInsets.fromLTRB(60.0, 16.0, 60.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF54B0F3),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text("Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white))),
            ),
            SizedBox(height: 30),
            FlatButton(
              onPressed: null,
              child: Container(
                  padding: EdgeInsets.fromLTRB(60.0, 16.0, 60.0, 16.0),
                  child: Text("Dont you have an account? Sign up",
                      style:
                          TextStyle(fontSize: 15, color: Color(0xFF54B0F3)))),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedInput extends StatelessWidget {
  final String hintText;
  const RoundedInput({Key key, @required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFF54B0F3)),
            border: InputBorder.none),
      ),
    );
  }
}
