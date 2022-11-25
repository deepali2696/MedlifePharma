import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/Admin/adminusersadd.dart';

import '../reusable/imagecard.dart';
import '../reusable/logoutcard.dart';
import '../reusable/menucard.dart';
import '../reusable/screentitle.dart';
import 'adminorderlist.dart';
import 'adminstocklist.dart';

class adminuserlist extends StatefulWidget {
  @override
  State<adminuserlist> createState() => _adminuserlist();
}

class _adminuserlist extends State<adminuserlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7AB4BD),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                screentitle(title: 'ADMIN'),
                logoutbtn(),
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
                        autofocus: true,
                        des: adminusersadd(),
                      ),
                      menuoption(menutext: 'Stocks',des: adminstocklist(),),
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
                'List of Users',
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
                                label: Text('User Id'),
                              ),
                              DataColumn(
                                label: Text('First Name'),
                              ),
                              DataColumn(
                                label: Text('Last Name'),
                              ),
                              DataColumn(
                                label: Text('Email'),
                              ),
                              DataColumn(
                                label: Text('Phone Number'),
                              ),
                              DataColumn(
                                label: Text('Password'),
                              ),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
                                DataCell(Text('0125')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('0125')),
                                DataCell(Text('Cetaphill')),
                                DataCell(Text('0125')),
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
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(50.0, 15.0, 30.0, 0.0),
                    child: SizedBox(
                      height: 40.0,
                      width: 100.0,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  adminusersadd()),),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFe6ea80),
                        ),
                        child: const Text(
                          'Add User',
                          style: TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                    child: SizedBox(
                      height: 40.0,
                      width: 170.0,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFe6ea80),
                        ),
                        child: const Text(
                          'Delete/Update User',
                          style: TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
