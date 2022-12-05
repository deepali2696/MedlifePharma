import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_stock.dart';
import 'package:pharmamanagementsystem/reusable/logoutcard.dart';


import '../reusable/imagecard.dart';
import '../reusable/menucard.dart';
import '../reusable/screentitle.dart';

class stockmanagerorder extends StatefulWidget {

  @override
  State<stockmanagerorder> createState() => _stockmanagerorderState();
}

class _stockmanagerorderState extends State<stockmanagerorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7ab4bd),
        body: SingleChildScrollView(
          child:
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const screentitle(
                    title: 'STOCK MANAGER',
                  ),
                  const logoutbtn(),
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
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        menuoption(
                            menutext: 'Prodcuts', padlef: 70.0,des: stock_product(),),
                        menuoption(
                          menutext: 'Stocks',des: stockmanagerstock(),
                        ),
                        menuoption(
                          menutext: 'Orders',  autofocus: true,des: stockmanagerorder(),
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
                      'Listed information of orders placed',
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
                                  label: Text('Order Id'),
                                ),
                                DataColumn(
                                  label: Text('Product Name'),
                                ),
                                DataColumn(
                                  label: Text('Client Name'),
                                ),
                                DataColumn(
                                  label: Text('Quantity of order'),
                                ),
                                DataColumn(
                                  label: Text('Total Price'),
                                ),
                                DataColumn(
                                  label: Text('Order Date'),
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
                                ]),DataRow(cells: [
                                  DataCell(Text('0125')),
                                  DataCell(Text('Cetaphill')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                ]),DataRow(cells: [
                                  DataCell(Text('0125')),
                                  DataCell(Text('Cetaphill')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                ]),DataRow(cells: [
                                  DataCell(Text('0125')),
                                  DataCell(Text('Cetaphill')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                ]),DataRow(cells: [
                                  DataCell(Text('0125')),
                                  DataCell(Text('Cetaphill')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                  DataCell(Text('0125')),
                                ]),DataRow(cells: [
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
              // Padding(
              //   padding: EdgeInsets.all(8),
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //     child: SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Column(
              //         children: <Widget>[
              //           DataTable(
              //             sortAscending: true,
              //               sortColumnIndex: 3,
              //               decoration: const BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(5.0))),
              //               columnSpacing: 30.0,
              //               columns: const [
              //                 DataColumn(
              //                   label: Text('Id'),
              //                 ),
              //                 DataColumn(
              //                   label: Text('Type'),
              //                 ),
              //                 DataColumn(
              //                   label: Text('Name'),
              //                 ),
              //                 DataColumn(
              //                   label: Text('Quantity'),
              //                 ),
              //                 DataColumn(
              //                   label: Text('Price'),
              //                 ),
              //               ],
              //               rows: const [
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //                 DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),DataRow(cells: [
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('Cetaphill')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                   DataCell(Text('0125')),
              //                 ]),
              //               ])
              //         ],
              //       ),
              //     ),
              //
              //   ),
              // ),
              // Row(
              //   children:const [
              //     scrollabledatatable(),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 130.0,
                      height: 35.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFe6ea80)),
                        child: const Text(
                          'Update/Delete',
                          style: TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
            // child: Column(
            //
            // ),
          ),
        )

    );
  }
}
