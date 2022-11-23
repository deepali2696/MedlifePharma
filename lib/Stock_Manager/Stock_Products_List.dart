import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable/imagecard.dart';
import '../reusable/screentitle.dart';

class stockproductslist extends StatefulWidget {
  @override
  State<stockproductslist> createState() => _stockproductlistsstate();
}

class _stockproductlistsstate extends State<stockproductslist> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xFF7ab4bd),
     body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const screentitle(
                  title: 'STOCK MANAGER',
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

          ],
        ),
     ),
   );
  }

}