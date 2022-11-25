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
                                'Add Order',
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
            )
        )
    );
  }
}


class scrollabledatatable extends StatelessWidget {
  const scrollabledatatable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
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
                      label: Text('Order Id'),
                    ),
                    DataColumn(label: Text('Product Name'),),
                    DataColumn(label: Text('Client Name'),),
                    DataColumn(label: Text('Quantiy'),),
                    DataColumn(label: Text('Total Amount'),),
                    DataColumn(label: Text('OrderDate'),),

                  ],
                  rows: const [
                    DataRow(
                        cells: [
                          DataCell(Text('00012')),
                          DataCell(Text('Cetaphill')),
                          DataCell(Text('vikas')),
                          DataCell(Text('1')),
                          DataCell(Text('10')),
                          DataCell(Text('15-10-2021')),
                        ]),
                    DataRow(
                        cells: [
                          DataCell(Text('00021')),
                          DataCell(Text('viks')),
                          DataCell(Text('hk')),
                          DataCell(Text('3')),
                          DataCell(Text('20')),
                          DataCell(Text('02-11-2022')),
                        ]),
                  ])
            ],
          )
      ),
    );
  }
}