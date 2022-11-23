import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class client extends StatefulWidget{
  _clientState createState() => _clientState();
}

class _clientState extends State<client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Order Clerk',
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
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/Logo.png')
              ),
            ),
            ),
          ],
        )
      ),
    );
  }
}

class menuoption extends StatelessWidget {
  const menuoption(
      {required this.menutext, this.padlef = 0.0, this.autofocus = false});

  final String menutext;
  final double padlef;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(padlef, 5.0, 0.0, 5.0),
        child: TextButton(
          autofocus: autofocus,
          onPressed: () {},
          child: Text(
            menutext,
            style: TextStyle(fontSize: 17.0),
          ),
        ),
      ),
    );
  }
}