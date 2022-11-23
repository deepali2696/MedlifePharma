import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:google_fonts/google_fonts.dart';

class stockproducts extends StatefulWidget {
  @override
  State<stockproducts> createState() => _stockproductsstate();
}

class _stockproductsstate extends State<stockproducts> {
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
            Container(
              color: const Color(0xFFc3eaf0),
              child: Row(
                children: const <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      menuoption(
                          menutext: 'Prodcuts', padlef: 70.0, autofocus: true),
                      menuoption(
                        menutext: 'Stocks',
                      ),
                      menuoption(
                        menutext: 'Orders',
                      )
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
                  child: Text(
                    'Add Products',
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
                textformfield(
                  Textfieldtitle: 'Product Id',
                ),
                textformfield(
                  Textfieldtitle: 'Product Type',
                ),
                textformfield(
                  Textfieldtitle: 'Product Name',
                ),
                textformfield(
                  Textfieldtitle: 'Quantity',
                ),
                textformfield(
                  Textfieldtitle: 'Price',
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Container(
                    child: SizedBox(
                      width: 100.0,
                      height: 35.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFe6ea80)),
                        child: Text(
                          'Save',
                          style:
                              TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                    ),
                    //
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


