import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminStockList extends StatefulWidget {
  const adminStockList({Key? key}) : super(key: key);

  @override
  State<adminStockList> createState() => _adminStockListState();
}

class _adminStockListState extends State<adminStockList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F8F9D),
        shadowColor: Color(0xFF82DBD8),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(
          'Admin',
          style: GoogleFonts.ubuntu(fontSize: 25.0),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo/bg.png'),fit: BoxFit.cover)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Text(
            'List of Stocks on Hand',
            style: GoogleFonts.ubuntu(fontSize: 20),
          )
        )
      )
    );
  }
}
