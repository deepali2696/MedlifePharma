import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';

import '../reusable/screentitle.dart';

class adminusersadd extends StatefulWidget {
  @override
  State<adminusersadd> createState() => _adminusersadd();
}

class _adminusersadd extends State<adminusersadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            child: const screentitle(
              title: 'Admin',
            ),
          )
        ]),
            Column(
              children: const <Widget>[
                imagecard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(
                  color: Color(0xFFc3eaf0),
                  child: Row(
                    children: const <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          menuoption(menutext: 'Users', padlef: 10.0, autofocus: true,),
                          menuoption(menutext: 'Stocks'),
                          menuoption(menutext: 'Orders'),
                        ],
                      )
                    ],
                  ),
                  ),
              ]
            ),
            Column(
              children:  <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                  child: Text('Add User',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: const <Widget>[
                textformfield(Textfieldtitle: 'User Id',),
                textformfield(
                  Textfieldtitle: 'First Name',
                ),
                textformfield(
                  Textfieldtitle: 'Last Name',
                ),
                textformfield(
                  Textfieldtitle: 'Email',
                ),
                textformfield(
                  Textfieldtitle: 'Phone Number',
                ),
                textformfield(
                  Textfieldtitle: 'Password',
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 40.0,
                width: 90.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  child: Text('Save',
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                ),
              )
            )
      ])),
    );
  }
}
