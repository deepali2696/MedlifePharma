import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart'
    '';
import 'package:google_fonts/google_fonts.dart';

import '../reusable/menucard.dart';
import '../reusable/userinputcard.dart';

class stockproducts extends StatefulWidget {
  @override
  State<stockproducts> createState() => _stockproductsstate();
}

class _stockproductsstate extends State<stockproducts> {

  final db = FirebaseDatabase.instance;

  final _formkey = GlobalKey<FormState>();

  String product_id = '';
  String product_type = '';
  String product_name = '';
  String product_quantity = '';
  String product_price = '';

  final pro_idController = TextEditingController();
  final pro_typeController = TextEditingController();
  final pro_nameController = TextEditingController();
  final pro_quanController = TextEditingController();
  final pro_priceController = TextEditingController();

  _cleartext(){
    pro_idController.clear();
    pro_typeController.clear();
    pro_nameController.clear();
    pro_quanController.clear();
    pro_priceController.clear();
}

  CollectionReference addproduct =
  FirebaseFirestore.instance.collection('Product');
  Future<void> _addingproduct() {
    return addproduct
        .add({'Productid': product_id, 'Producttype': product_type, 'Productname': product_name,'Productquantity': product_quantity,'Productprice': product_price})
        .then((value) => print('Product Added'))
        .catchError((_) => print('Something Error In adding Product'));
  }

  @override
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

    final ref = db.ref().child('Product');
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
                children:const <Widget>[
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
                    'Add Products',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Column(
              children:<Widget>[
                textformfield(
                  Textfieldtitle: 'Product Id',controller: pro_idController,key: _formkey,
                ),
                textformfield(
                  Textfieldtitle: 'Product Type',controller: pro_typeController,
                ),
                textformfield(
                  Textfieldtitle: 'Product Name',controller: pro_nameController,
                ),
                textformfield(
                  Textfieldtitle: 'Quantity',controller: pro_quanController,
                ),
                textformfield(
                  Textfieldtitle: 'Price',controller: pro_priceController,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0),
                child: ButtonBar(
                  children: <Widget>[
                    SizedBox(
                              width: 100.0,
                              height: 35.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  if(_formkey.currentState!.validate())
                                    {
                                      setState(() {
                                        product_id = pro_idController.text;
                                        product_type = pro_typeController.text;
                                        product_name= pro_nameController.text;
                                        product_quantity = pro_quanController.text;
                                        product_price = pro_priceController.text;

                                        _addingproduct();
                                        _cleartext();
                                        Navigator.pop(context);
                                      });
                                    }
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFFe6ea80)),
                                child:const Text(
                                  'Save',
                                  style:
                                      TextStyle(color: Colors.black87, fontSize: 15.0),
                                ),
                              ),
                    ),
                       Spacer(
                         flex: 2,
                       ),

                       SizedBox(
                              width: 100.0,
                              height: 35.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFFe6ea80)),
                                child: const Text(
                                  'Save',
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


