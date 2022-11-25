import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';

class listoforder extends StatefulWidget {
  _listoforder createState() => _listoforder();
}

class _listoforder extends State<listoforder>{
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
                    const screentitle(title: 'Order Clerk'),
                    Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      child: SizedBox(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(backgroundColor: Colors.red),
                          child: const Text('Logout',style: TextStyle(
                              fontSize: 17.0,color: Colors.black87),
                          ),),
                      ),
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
                    children:const <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          menuoption(
                              menutext: 'Client', padlef: 70.0, autofocus: false),
                          menuoption(
                              menutext: 'Orders', padlef: 80.0, autofocus: true)
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
                        'List Of Orders',
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 700,
                  height: 450,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Column(
                          children: <Widget>[
                            DataTable(
                                dividerThickness: 5, decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0))), columnSpacing: 30.0,
                                columns: const [
                                  DataColumn(label: Text('Order ID'),),
                                  DataColumn(label: Text('Product Name'),),
                                  DataColumn(label: Text('Client Name'),),
                                  DataColumn(label: Text('Quantity'),),
                                  DataColumn(label: Text('Total Amount'),),
                                  DataColumn(label: Text('Date of Order'),),
                                ],
                                rows: const [
                                  DataRow(cells: [
                                    DataCell(Text('0125')),
                                    DataCell(Text('Cetaphill')),
                                    DataCell(Text('0125')),
                                    DataCell(Text('0125')),
                                    DataCell(Text('0125')),
                                    DataCell(Text('01-02-2022')),
                                  ]),
                                ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}


