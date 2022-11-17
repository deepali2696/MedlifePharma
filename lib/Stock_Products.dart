import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class stockproducts extends StatefulWidget {
  @override
  State<stockproducts> createState() => _stockproductsstate();
}

class _stockproductsstate extends State<stockproducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  height: 50.0,
                  width: 20.0,
                  decoration: BoxDecoration(color:Colors.pinkAccent),
                  alignment: Alignment.center,
                  child: Text('Stock Manager',
                      style: GoogleFonts.acme(
                          fontSize: 30.0, color: Colors.white)),
                ))
            // Container(
            //   alignment: Alignment.center,
            //   height: 100.0,
            //   : 0.7,
            //   child: Text(
            //       'Stock Manager',
            //   style: GoogleFonts.acme(fontSize: 30.0,color: Colors.white)
            //   ),
            // )
          ]))
        ],
      ),
    );
  }
}
