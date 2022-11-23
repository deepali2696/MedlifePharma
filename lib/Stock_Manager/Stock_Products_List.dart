import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable/imagecard.dart';
import '../reusable/menucard.dart';
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
            Container(
              color: const Color(0xFFc3eaf0),
              child: Row(
                children: const <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                  child: const Text(
                    'List Products',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                DataTable(columns: const [
                  DataColumn(label: Text('Product Id'),),
                  DataColumn(label: Text('Product Type'),),
                  DataColumn(label: Text('Product Name'),),
                  DataColumn(label: Text('Product Quantity'),),
                  DataColumn(label: Text('Product Price'),),
                ], rows: const [
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),

                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
