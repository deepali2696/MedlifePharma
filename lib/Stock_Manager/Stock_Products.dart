// import 'package:firebase_database/firebase_database.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_order.dart';
// import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_stock.dart';
// import 'package:pharmamanagementsystem/reusable/imagecard.dart';
// import 'package:pharmamanagementsystem/reusable/logoutcard.dart';
// import 'package:pharmamanagementsystem/reusable/screentitle.dart'
//     '';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../reusable/menucard.dart';
// import '../reusable/userinputcard.dart';
// import 'Stock_Products_List.dart';
//
// class stockproducts extends StatefulWidget {
//   @override
//   State<stockproducts> createState() => _stockproductsstate();
// }
//
// class _stockproductsstate extends State<stockproducts> {
//   // final db = FirebaseDatabase.instance;
//
//   final _formkey = GlobalKey<FormState>();
//
//   String product_id = '';
//   String product_type = '';
//   String product_name = '';
//   String product_quantity = '';
//   String product_price = '';
//
//   final pro_idController = TextEditingController();
//   final pro_typeController = TextEditingController();
//   final pro_nameController = TextEditingController();
//   final pro_quanController = TextEditingController();
//   final pro_priceController = TextEditingController();
//
//   _cleartext() {
//     pro_idController.clear();
//     pro_typeController.clear();
//     pro_nameController.clear();
//     pro_quanController.clear();
//     pro_priceController.clear();
//   }
//
//   //
//   // CollectionReference addproduct =
//   // FirebaseFirestore.instance.collection('Product');
//   // Future<void> _addingproduct() {
//   //   return addproduct
//   //       .add({'Productid': product_id, 'Producttype': product_type, 'Productname': product_name,'Productquantity': product_quantity,'Productprice': product_price})
//   //       .then((value) => print('Product Added'))
//   //       .catchError((_) => print('Something Error In adding Product'));
//   // }
//   //
//   // @override
//   void dispose() {
//     pro_idController.dispose();
//     pro_typeController.dispose();
//     pro_nameController.dispose();
//     pro_quanController.dispose();
//     pro_priceController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //
//     // final ref = db.ref().child('Product');
//     return Scaffold(
//       backgroundColor: Color(0xFF7ab4bd),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 const screentitle(
//                   title: 'STOCK MANAGER',
//                 ),
//                const logoutbtn(),
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
//                         menutext: 'Products',
//                         padlef: 70.0,
//                         autofocus: true,
//                         des: stockproducts(),
//                       ),
//                       const menuoption(menutext: 'Stocks', des: stockmanagerstock(),),
//                       menuoption(menutext: 'Orders', des: stockmanagerorder(),),
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
//                     'Add Products',
//                     style: TextStyle(
//                         fontSize: 17.0,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//             Column(
//               children: <Widget>[
//                 textformfield(
//                   Textfieldtitle: 'Product Id',
//                   controller: pro_idController,
//                   key: _formkey,
//                 ),
//                 textformfield(
//                   Textfieldtitle: 'Product Type',
//                   controller: pro_typeController,
//                 ),
//                 textformfield(
//                   Textfieldtitle: 'Product Name',
//                   controller: pro_nameController,
//                 ),
//                 textformfield(
//                   Textfieldtitle: 'Quantity',
//                   controller: pro_quanController,
//                 ),
//                 textformfield(
//                   Textfieldtitle: 'Price',
//                   controller: pro_priceController,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(top: 20.0),
//                   child: ButtonBar(
//                     children: <Widget>[
//                       SizedBox(
//                         width: 100.0,
//                         height: 35.0,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (_formkey.currentState!.validate()) {
//                               setState(() {
//                                 product_id = pro_idController.text;
//                                 product_type = pro_typeController.text;
//                                 product_name = pro_nameController.text;
//                                 product_quantity = pro_quanController.text;
//                                 product_price = pro_priceController.text;
//
//                                 // _addingproduct();
//                                 _cleartext();
//                                 Navigator.pop(context);
//                               });
//                             }
//                           },
//                           style: TextButton.styleFrom(
//                               backgroundColor: const Color(0xFFe6ea80)),
//                           child: const Text(
//                             'Save',
//                             style: TextStyle(
//                                 color: Colors.black87, fontSize: 15.0),
//                           ),
//                         ),
//                       ),
//                       Spacer(
//                         flex: 2,
//                       ),
//                       SizedBox(
//                         width: 100.0,
//                         height: 35.0,
//                         child: ElevatedButton(
//                           onPressed: () => Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => stockproductslist()),
//                           ),
//                           style: TextButton.styleFrom(
//                               backgroundColor: const Color(0xFFe6ea80)),
//                           child: const Text(
//                             'List Products',
//                             style: TextStyle(
//                                 color: Colors.black87, fontSize: 15.0),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'Stock_Products_List.dart';

class stock_product extends StatefulWidget {
  const stock_product({Key? key}) : super(key: key);

  @override
  State<stock_product> createState() => _stock_productState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
      child: Text("Please select product type"),
      value: "0",
    ),
    DropdownMenuItem(child: Text("Medicines"), value: "Medicines"),
    DropdownMenuItem(child: Text("Vitamins & Suppliments"), value: "Vitamins & Suppliments"),
    DropdownMenuItem(child: Text("Bath & Body Care"), value: "Bath & Body Care"),
    DropdownMenuItem(child: Text("Beauty Product"), value: "Beauty Product"),
  ];
  return menuItems;
}

class _stock_productState extends State<stock_product> {
  String selectedValue = "0";

  TextEditingController dateInput = TextEditingController();

  final pro_idController = TextEditingController();
  final pro_typeController = TextEditingController();
  final pro_nameController = TextEditingController();
  final pro_quanController = TextEditingController();
  final pro_priceController = TextEditingController();
  final pro_datecontroller = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    pro_datecontroller.text = ""; //set the initial value of text field
    super.initState();
     dbRef = FirebaseDatabase.instance.ref().child('Products');
  }

  _cleartext() {
    pro_idController.clear();
    pro_typeController.clear();
    pro_nameController.clear();
    pro_quanController.clear();
    pro_priceController.clear();
    pro_datecontroller.clear();
  }

  // @override
  void dispose() {
    pro_idController.dispose();
    pro_typeController.dispose();
    pro_nameController.dispose();
    pro_quanController.dispose();
    pro_priceController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFFB3E8E5),
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
            child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
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
                                "assets/logo/add.png",
                                width: 45,
                                height: 45,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Add Products",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 17, color: Colors.white),
                            ))
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 70.0,
                    margin: EdgeInsets.all(14.0),
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
                            child: TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          stock_list())),
                              child: Text(
                                "List Products",
                                style: GoogleFonts.ubuntu(
                                    fontSize: 17, color: Colors.white),
                              ),
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
                          'ADD PRODUCTS',
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
                      child: Column(
                        children: <Widget>[
                          text_input(
                            controller: pro_idController,
                            label: 'Product Id',
                            hinttext: 'Please enter product Id',
                            iconname: Icons.numbers,
                          ),
                           text_input(
                             controller: pro_nameController,
                            label: 'Product Name',
                            hinttext: 'Please enter product Name',
                            iconname: Icons.drive_file_rename_outline,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              child: DropdownButton(
                                  value: selectedValue,
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 17),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                  items: dropdownItems),
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 10),
                                  child: TextField(
                                    controller: pro_datecontroller,
                                    //editing controller of this TextField
                                    decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      prefixIcon: Icon(Icons
                                          .calendar_today), //icon of text field
                                      labelText: "Enter Date",
                                      labelStyle: GoogleFonts.ubuntu(
                                          color: Colors.deepOrangeAccent),
                                      //label text of field
                                    ),
                                    readOnly: true,
                                    //set it true, so that user will not able to edit text
                                    onTap: () async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1950),
                                          //DateTime.now() - not to allow to choose before today.
                                          lastDate: DateTime(2100));

                                      if (pickedDate != null) {
                                        print(
                                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        print(
                                            formattedDate); //formatted date output using intl package =>  2021-03-16
                                        setState(() {
                                          pro_datecontroller.text =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {}
                                    },
                                  ))),
                           text_input(
                            controller: pro_quanController,
                            label: 'Product Quantity',
                            hinttext: 'Please enter product quantity',
                            iconname: Icons.numbers,
                          ),
                           text_input(
                            controller: pro_priceController,
                            label: 'Product Price',
                            hinttext: 'Please enter product price',
                            iconname: Icons.currency_rupee,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: FloatingActionButton.extended(
                      backgroundColor: Color(0xFF3A8891),
                      onPressed: () {

                        Map<String, String> products = {
                          'productid' : pro_idController.text,
                          'productname' : pro_nameController.text,
                          'productdate' : pro_datecontroller.text,
                          'productquantity' : pro_quanController.text,
                          'productprice' : pro_priceController.text,
                        };

                        dbRef.push().set(products);

                        _cleartext();
                      },
                      label: Text(
                        'Save Product',
                        style: GoogleFonts.ubuntu(),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}

class text_input extends StatelessWidget {
  const text_input(
      {required this.label, required this.hinttext, required this.iconname,required this.controller});

  final label;
  final hinttext;
  final iconname;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: false,
          fillColor: Color(0xFFF0FFF3),
          prefixIcon: (Icon(iconname)),
          labelText: label,
          labelStyle: GoogleFonts.ubuntu(color: Colors.deepOrangeAccent),
          hintText: hinttext,
          hintStyle: GoogleFonts.ubuntu(color: Colors.black),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
