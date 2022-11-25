import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/Admin/adminusersadd.dart';
import 'package:pharmamanagementsystem/OrderClerk/Orders.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //
  // FirebaseDatabase database = FirebaseDatabase.instance;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                child: screentitle(
                  title: 'Login',
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                    color: Color(0xFF4F7F84),
                    width: double.infinity,
                    height: 180,
                    margin: EdgeInsets.only(bottom: 70.0),
                    child: Image.asset('logo/Logo2.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: usernameController,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                controller: passwordController,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                    width: 90.0,
                    child: ElevatedButton(
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4f7f84),
                          textStyle: const TextStyle(fontSize: 20.0),
                        ),
                        onPressed: () {
                          if (usernameController.text == 'admin') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => adminusersadd()));
                          }
                          if (usernameController.text == 'stockmanager') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => stockproducts()));
                          }
                          if (usernameController.text == 'orderclerk') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          }
                          // else if(usernameController.text =='')
                          //   {
                          //       AlertDialog(
                          //         title: Text('Unable to login'),
                          //         content: SingleChildScrollView(
                          //           child: ListBody(
                          //             children: <Widget>[
                          //               Text('Your credentials are wrong,Please enter correct credentials.'),
                          //               Text('Would you like to try again?')
                          //             ],
                          //           ),
                          //         ),
                          //         actions: <Widget>[
                          //           TextButton(
                          //               onPressed: () => Navigator.pop(context),
                          //               child: Text('Try again'),
                          //           )
                          //         ],
                          //       );
                          //   }
                        }
                        // => Navigator.push(context, MaterialPageRoute(builder: (context) =>  stockproducts()),
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
