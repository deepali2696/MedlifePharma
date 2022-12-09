// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_order.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_stock.dart';
// import 'package:pharmamanagementsystem/reusable/logoutcard.dart';
//
// import '../reusable/imagecard.dart';
// import '../reusable/menucard.dart';
// import '../reusable/screentitle.dart';
//
// class stockproductslist extends StatefulWidget {
//   @override
//   State<stockproductslist> createState() => _stockproductlistsstate();
// }
//
// class _stockproductlistsstate extends State<stockproductslist> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Color(0xFF7ab4bd),
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 const screentitle(
//                   title: 'STOCK MANAGER',
//                 ),
//                 const logoutbtn(),
//               ],
//             ),
//             Column(
//               children: const <Widget>[
//                 imagecard(),
//               ],
//             ),
//             Container(
//               color: const Color(0xFFc3eaf0),
//               child: Row(
//                 children: <Widget>[
//                   ButtonBar(
//                     alignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       menuoption(
//                           menutext: 'Prodcuts', padlef: 70.0, autofocus: true,des: stock_product(),),
//                       menuoption(
//                         menutext: 'Stocks',des:stockmanagerstock()
//                       ),
//                       menuoption(
//                         menutext: 'Orders',des: stockmanagerorder(),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Column(
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                     'List of Products',
//                     style: TextStyle(
//                         fontSize: 17.0,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               width: 700,
//               height: 450,
//               child: Padding(
//                 padding: EdgeInsets.all(8),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Column(
//                       children: <Widget>[
//                         DataTable(
//                             dividerThickness: 5,
//                             decoration: const BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(5.0))),
//                             columnSpacing: 30.0,
//                             columns: const [
//                               DataColumn(
//                                 label: Text('Product Id'),
//                               ),
//                               DataColumn(
//                                 label: Text('Product Type'),
//                               ),
//                               DataColumn(
//                                 label: Text('Product Name'),
//                               ),
//                               DataColumn(
//                                 label: Text('Product Quantity'),
//                               ),
//                               DataColumn(
//                                 label: Text('Product Price'),
//                               ),
//                             ],
//                             rows: const [
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                               DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),DataRow(cells: [
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('Cetaphill')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                                 DataCell(Text('0125')),
//                               ]),
//                             ])
//                       ],
//                     ),
//                   ),
//
//                 ),
//               ),
//               // Row(
//               //   children:const [
//               //     scrollabledatatable(),
//               //   ],
//               // ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Padding(padding: EdgeInsets.only(top: 20.0),
//                   child: ButtonBar(
//                     children: <Widget>[
//                       SizedBox(
//                         width: 130.0,
//                         height: 35.0,
//                         child: ElevatedButton(
//                           onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  stock_product()),),
//                           style: TextButton.styleFrom(
//                               backgroundColor: const Color(0xFFe6ea80)),
//                           child:const Text(
//                             'Add Products',
//                             style:
//                             TextStyle(color: Colors.black87, fontSize: 15.0),
//                           ),
//                         ),
//                       ),
//                       Spacer(
//                         flex: 2,
//                       ),
//
//                       SizedBox(
//                         width: 130.0,
//                         height: 35.0,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: TextButton.styleFrom(
//                               backgroundColor: const Color(0xFFe6ea80)),
//                           child: const Text(
//                             'Update/Delete',
//                             style:
//                             TextStyle(color: Colors.black87, fontSize: 15.0),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),)
//
//               ],
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Stock_Products.dart';
import 'package:firebase_database/firebase_database.dart';

class stock_list extends StatefulWidget {
  const stock_list({Key? key}) : super(key: key);

  @override
  State<stock_list> createState() => _stock_listState();
}

class _stock_listState extends State<stock_list> {
  Query dbRef = FirebaseDatabase.instance.ref().child('Products');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('Products');

  Widget listItem({required Map product}) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0xFF90C8AC),
            )
          ]),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 156,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product['id']),
          const SizedBox(
            height: 5,
          ),
          Text(
            'age',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            'salary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            'salary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'salary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  reference.child(product['key']).remove();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red[700],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2F8F9D),
          shadowColor: Color(0xFF82DBD8),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            'STOCK MANAGER',
            style: GoogleFonts.ubuntu(fontSize: 25.0),
          ),
        ),
        body:
            SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo/bg.png'), fit: BoxFit.cover)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                height: 70.0,
                                margin: EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                    color: Color(0xFF2F8F9D),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0xFF7A9EB1),
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.asset(
                                            "assets/logo/add.png",
                                            width: 45,
                                            height: 45,
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 15),
                                        child: TextButton(
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => stock_product())),
                                          child: Text(
                                            "Add Products",
                                            style: GoogleFonts.ubuntu(
                                                fontSize: 17, color: Colors.white),
                                          ),
                                        ))
                                  ],
                                ),
                              )),
                          Expanded(
                              child: Container(
                                height: 70.0,
                                margin: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    color: Color(0xFF2F8F9D),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0xFF7A9EB1),
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 20),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.asset(
                                            "assets/logo/list.png",
                                            width: 45,
                                            height: 45,
                                          ),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 15),
                                        child: Text(
                                          "List Products",
                                          style: GoogleFonts.ubuntu(
                                              fontSize: 17, color: Colors.white),
                                        ))
                                  ],
                                ),
                              ))
                        ],
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                              child: const Divider(
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                child: Text(
                                  'LIST PRODUCTS',
                                  style: GoogleFonts.ubuntu(fontSize: 18),
                                ),
                              ))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        height: 540.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xFF90C8AC),
                              )
                            ]),


                        // FirebaseAnimatedList(
                        //     query: dbRef,
                        //     itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        //         Animation<double> animation, int index) {
                        //       if (!snapshot.exists) {
                        //         return Text('No data');
                        //       } else {
                        //         return SizeTransition(
                        //           sizeFactor: animation,
                        //           axis: Axis.horizontal,
                        //           axisAlignment: -0.8,
                        //           child: Column(
                        //             textDirection: TextDirection.ltr,
                        //             verticalDirection: VerticalDirection.down,
                        //             children: <Widget>[
                        //               SizedBox(
                        //                 height: 100.0,
                        //               ),
                        //
                        //
                        //               Text(
                        //                 "User ID : " + snapshot.value ! ['productid'],
                        //               ),
                        //               SizedBox(
                        //                 height: 50.0,
                        //               ),
                        //             ],
                        //           ),
                        //         );
                        //       }
                        //     }),

                      ),
                    ],
                  ),
                )),
            );

  }
}
