
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';


class landingsplash extends StatefulWidget {
  const landingsplash({Key? key}) : super(key: key);

  @override
  State<landingsplash> createState() => _landingsplashState();
}

class _landingsplashState extends State<landingsplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => login()
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5EBE0),
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 300,
                  height: 400,
                  child: Image.asset('assets/logo/board_ani.gif'),
                ),
              ),
              Container(
                child: Text(
                  'MEDILIFE',
                  style: GoogleFonts.prompt(fontSize: 50.0,fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  'PHARMA',
                  style: GoogleFonts.mada(fontSize: 28.0,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
