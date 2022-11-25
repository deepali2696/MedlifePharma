import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/Admin/adminorderlist.dart';
import 'package:pharmamanagementsystem/Admin/adminusersadd.dart';

import '../reusable/imagecard.dart';
import '../reusable/menucard.dart';
import '../reusable/screentitle.dart';

class adminstocklist extends StatefulWidget {
  @override
  State<adminstocklist> createState() => _adminstocklistState();
}

class _adminstocklistState extends State<adminstocklist> {
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
                const screentitle(title: 'ADMIN'),
                Container(
                  alignment: Alignment.center,
                  height: 70.0,
                  child: SizedBox(
                    width: 100.0,
                    height: 40.0,
                    child: FloatingActionButton.extended(
                      extendedTextStyle: TextStyle(fontSize: 17.0),
                      backgroundColor: Colors.red,
                      onPressed: () {},
                      label: Text('Logout'),
                      icon: Icon(Icons.logout),
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: imagecard(),
            ),
            Container(
              color: Color(0xFFc3eaf0),
              child: Row(
                children:  <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      menuoption(
                        menutext: 'Users',
                        padlef: 85.0,
                        des: adminusersadd(),
                      ),
                      menuoption(menutext: 'Stocks', autofocus: true,des: adminstocklist(),),
                      menuoption(menutext: 'Orders',des: adminorderlist(),),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'List of Stocks on Hand',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 700,
              height: 450,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: <Widget>[
                        DataTable(
                            dividerThickness: 5,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            columnSpacing: 30.0,
                            columns: const [
                              DataColumn(
                                label: Text('Product Id'),
                              ),
                              DataColumn(
                                label: Text('Product Type'),
                              ),
                              DataColumn(
                                label: Text('Product Name'),
                              ),
                              DataColumn(
                                label: Text('Product Quantity'),
                              ),
                              DataColumn(
                                label: Text('Product Price'),
                              ),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                                DataCell(Text('0125')),
                              ]),
                            ])
                      ],
                    ),
                  ),
                ),
              ),
              // Row(
              //   children:const [
              //     scrollabledatatable(),
              //   ],
              // ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: ButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 200.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFe6ea80)),
                          child: const Text(
                            'Generate Stock Report',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ],
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
