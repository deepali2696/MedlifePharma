import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  color: Color(0xFF4F7F84),
                  width: double.infinity,
                  height: 150,
                  margin: EdgeInsets.only(bottom: 50),
                  /*decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular((50.0)),*/
                      child: Image.asset('assets/Logo.png')),
                ),
              ),
              )  ],
          )),
    );
  }
}
