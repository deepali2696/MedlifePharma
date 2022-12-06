// import 'package:flutter/material.dart';
// import 'package:pharmamanagementsystem/Admin/adminusersadd.dart';
// import 'package:pharmamanagementsystem/OrderClerk/Orders.dart';
// import 'package:pharmamanagementsystem/reusable/screentitle.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';
//
// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   //
//   // FirebaseDatabase database = FirebaseDatabase.instance;
//
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF7AB4BD),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//               Container(
//                 child: screentitle(
//                   title: 'Login',
//                 ),
//               )
//             ]),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: Center(
//                 child: Container(
//                     color: Color(0xFF4F7F84),
//                     width: double.infinity,
//                     height: 180,
//                     margin: EdgeInsets.only(bottom: 70.0),
//                     child: Image.asset('assets/logo/Logo2.png')),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               child: TextField(
//                 controller: usernameController,
//                 cursorColor: Colors.black,
//                 decoration: InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   labelText: 'Username',
//                   labelStyle: TextStyle(color: Colors.black),
//                   hintText: 'Enter your Username',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 cursorColor: Colors.black,
//                 decoration: InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   labelText: 'Password',
//                   labelStyle: TextStyle(color: Colors.black),
//                   hintText: 'Enter your Password',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 40.0,
//                     width: 90.0,
//                     child: ElevatedButton(
//                         child: Text('Login'),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xFF4f7f84),
//                           textStyle: const TextStyle(fontSize: 20.0),
//                         ),
//                         onPressed: () {
//                           if (usernameController.text == 'admin') {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => adminusersadd()));
//                           }
//                           if (usernameController.text == 'stockmanager') {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => stockproducts()));
//                           }
//                           if (usernameController.text == 'orderclerk') {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => order()));
//                           }
//                           // else if(usernameController.text =='')
//                           //   {
//                           //       AlertDialog(
//                           //         title: Text('Unable to login'),
//                           //         content: SingleChildScrollView(
//                           //           child: ListBody(
//                           //             children: <Widget>[
//                           //               Text('Your credentials are wrong,Please enter correct credentials.'),
//                           //               Text('Would you like to try again?')
//                           //             ],
//                           //           ),
//                           //         ),
//                           //         actions: <Widget>[
//                           //           TextButton(
//                           //               onPressed: () => Navigator.pop(context),
//                           //               child: Text('Try again'),
//                           //           )
//                           //         ],
//                           //       );
//                           //   }
//                         }
//                         // => Navigator.push(context, MaterialPageRoute(builder: (context) =>  stockproducts()),
//                         ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmamanagementsystem/Stock_Manager/stock_home.dart';

import 'Stock_Manager/Stock_Products.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/logo/bg.png'),
      fit: BoxFit.cover,
      )),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    height: 250,
                    child: Image.asset('assets/logo/board.png'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.people),
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'Enter your Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        _showDialog(context, "Forgot Password",
                            "Please contact Admin for new Password !");
                      },
                      child: Text(
                        'forgot password ?',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 300,
                      child: FloatingActionButton.extended(
                        backgroundColor: Color(0xFF21a0aa),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>stock_home()),),
                        label: Text('Login'),
                        icon: Icon(Icons.login),
                      ),
                    ),

                  ),
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
                          height: 50,
                        )),
                  ),
                  Text(
                    "or",
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
                          height: 50,
                        )),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FloatingActionButton.extended(
                        backgroundColor: Color(0xFF21a0aa),
                        onPressed: () {},
                        label: Text('Facebook'),
                        icon: Icon(Icons.facebook),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: FloatingActionButton.extended(
                        backgroundColor: Color(0xFF21a0aa),
                        onPressed: () {},
                        label: Text('Google'),
                        icon: Icon(Icons.report_gmailerrorred),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15,),
                      child: TextButton(
                          onPressed: () {
                            _showDialog(context, "Registration",
                                "Please Contact Admin for Registration !");
                          },
                          child: const Text(
                            'Need an account ? Register',
                            style: TextStyle(color: Colors.grey),
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ))

    );
  }
}

void _showDialog(BuildContext context, String mainmsg, String secmsg) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text(mainmsg),
        content: new Text(secmsg),
        actions: <Widget>[
          TextButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
