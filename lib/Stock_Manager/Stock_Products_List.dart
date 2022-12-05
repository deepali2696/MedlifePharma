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

class Products {
  late int productid, productquantity, productprice;
  String productname,productdate;
  Products(this.productid, this.productname, this.productquantity, this.productprice, this.productdate);
}

class _stock_listState extends State<stock_list> {

  List<Products> ProductsLst = <Products>[ ] ;

  final formKey = new GlobalKey<FormState>();
  var Id_controller = new TextEditingController();
  var Name_controller = new TextEditingController();
  var date_controller = new TextEditingController();
  var quantity_controller = new TextEditingController();
  var price_controller = new TextEditingController();
  var lastId;

  @override
  // Method that call only once to initiate the default app.
  void initState() {
    super.initState();
    Id_controller.text = lastId.toString();
  }

  refreshList() {
    setState(() {
      Id_controller.text = lastId.toString();
    });
  }

  validate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      String Id = Id_controller.text;
      String Name = Name_controller.text;
      String date = date_controller.text;
      String quan = quantity_controller.text;
      String price = price_controller.text;
      Products  p = Products(int.parse(Id), Name, int.parse(date), int.parse(quan), price);
      ProductsLst.add(p);
      lastId++;
      refreshList();
      Name_controller.text = "";
    }
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
      body: SingleChildScrollView(
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
                              padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 20),
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
                                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => stock_product())) ,
                                child: Text("Add Products",
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 17, color: Colors.white), ),
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
                              padding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 20),
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
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'LIST PRODUCTS',
                        style: GoogleFonts.ubuntu(fontSize: 18),
                      ),
                    ))
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  height: 500.0,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0xFF90C8AC),
                        )
                      ]),
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
                                  label: Text('Product Name'),
                                ),
                                DataColumn(
                                  label: Text('Product Date'),
                                ),
                                DataColumn(
                                  label: Text('Product Quantity'),
                                ),
                                DataColumn(
                                  label: Text('Product Price'),
                                ),
                              ],
                              rows: ProductsLst.map((p) => DataRow(cells: [ DataCell(Text(p.productid.toString()))])).toList()
                              )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: FloatingActionButton.extended(
                    backgroundColor: Color(0xFF3A8891),
                    onPressed: () {},
                    label: Text(
                      'Update Product',
                      style: GoogleFonts.ubuntu(),),

                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: FloatingActionButton.extended(
                    backgroundColor: Color(0xFF3A8891),
                    onPressed: () {},
                    label: Text(
                      'Delete Product',
                      style: GoogleFonts.ubuntu(),),

                  ),
                )
              ],
            )
          ],
        ),
      )

    );
  }
}
