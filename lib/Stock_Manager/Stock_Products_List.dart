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
      body: SafeArea(
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
                    'List of Products',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              children: const [
                scrollabledatatable(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0),
                  child: ButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 130.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFe6ea80)),
                          child:const Text(
                            'Add Products',
                            style:
                            TextStyle(color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),

                      SizedBox(
                        width: 130.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFe6ea80)),
                          child: const Text(
                            'Update/Delete',
                            style:
                            TextStyle(color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),)

              ],
            )

          ],
        ),
      ),
    );
  }
}

class scrollabledatatable extends StatelessWidget {
  const scrollabledatatable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            DataTable(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                columnSpacing: 30.0,
                columns: const [
                  DataColumn(
                    label: Text('Id'),
                  ),
                  DataColumn(label: Text('Type'),),
                  DataColumn(label: Text('Name'),),
                  DataColumn(label: Text('Quantity'),),
                  DataColumn(label: Text('Price'),),
                ],
                rows: const [
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
                  DataRow(
                      cells: [
                        DataCell(Text('0125')),
                        DataCell(Text('Cetaphill')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                        DataCell(Text('0125')),
                      ]),
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

      )
      ),
    );
  }
}
