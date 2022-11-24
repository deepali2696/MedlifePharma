import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';


class client extends StatefulWidget{
  _clientState createState() => _clientState();
}

class _clientState extends State<client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const screentitle(
                  title: 'ORDER CLERK',
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70.0,
                  child: SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(backgroundColor: Colors.red),
                        child: const Text(
                          'Logout',
                          style: TextStyle(fontSize: 17.0, color: Colors.black87),
                        ),
                      )),
                ),
              ],
            ),
            Column(
              children: const <Widget>[
                imagecard(),
              ],
            ),
            Container(
              color: const Color(0xFFc3eaf0),
              child: Row(
                children:const <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      menuoption(
                          menutext: 'Client', padlef: 70.0, autofocus: true),
                      menuoption(
                        menutext: 'Orders', padlef: 80.0, autofocus: false)
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Add New Client',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
        Column(
          children: const <Widget>[
            textformfield(Textfieldtitle: 'Client ID', ),
            textformfield(Textfieldtitle: 'Email',),
            textformfield(Textfieldtitle: 'Mobile Number',),
            textformfield(Textfieldtitle: 'Pharmacy Name',),
            textformfield(Textfieldtitle: 'License Number',),
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    child: SizedBox(
                      width: 100.0,
                      height: 35.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFe6ea80)),
                        child:const Text('Save', style:
                          TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}

