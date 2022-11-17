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
            Container(
              alignment: Alignment.center,
              height: 100.0,
              width: 250.0,
              child: Text('Stock Manager',
                  style: GoogleFonts.acme(fontSize: 30.0, color: Colors.white)),
            ),
            Container(
                alignment: Alignment.center,
                width: 140.0,
                height: 100.0,
                child: SizedBox(
                  width: 110.0,
                  height: 40.0,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text('Logout'),
                    icon: Icon(Icons.logout),
                    backgroundColor: Colors.redAccent,
                  ),
                ))
          ])),
          Expanded(
              child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.white),
                height: 50.0,
                width: 390.0,
                child: ButtonBar(
                  buttonHeight: 10.0,
                  buttonMinWidth: 200.0,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Text('Products'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Stocks'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Orders'),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
