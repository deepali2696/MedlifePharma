import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: const screentitle(title: 'Login'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    color: Color(0xFF4F7F84),
                    width: double.infinity,
                    height: 150,
                    margin: EdgeInsets.only(bottom: 70.0),
                    child: Image.asset('logo/Logo2.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: const TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Enter your Username',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Container(
                child: const TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Enter your Password',
                  ),
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Container(
                child: SizedBox(
                  height: 50.0,
                  width: 100.0,
                  child:ElevatedButton(
                    child: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4f7f84),
                        textStyle: const TextStyle(fontSize: 20.0)
                    ),
                    onPressed: () {},
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
