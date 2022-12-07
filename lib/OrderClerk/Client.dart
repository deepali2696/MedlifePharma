// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pharmamanagementsystem/OrderClerk/Orders.dart';
// import 'package:pharmamanagementsystem/reusable/imagecard.dart';
// import 'package:pharmamanagementsystem/reusable/logoutcard.dart';
// import 'package:pharmamanagementsystem/reusable/menucard.dart';
// import 'package:pharmamanagementsystem/reusable/screentitle.dart';
// import 'package:pharmamanagementsystem/reusable/userinputcard.dart';
//
//
// class client extends StatefulWidget{
//   _clientState createState() => _clientState();
// }
//
// class _clientState extends State<client> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF7AB4BD),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 const screentitle(
//                   title: 'ORDER CLERK',
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
//                 children:<Widget>[
//                   ButtonBar(
//                     alignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       menuoption(
//                           menutext: 'Client', padlef: 70.0, autofocus: true),
//                       menuoption(
//                         menutext: 'Orders', padlef: 80.0, autofocus: false,des: order(),)
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
//                     'Add New Client',
//                     style: TextStyle(
//                         fontSize: 17.0,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//         Column(
//           children: const <Widget>[
//             textformfield(Textfieldtitle: 'Client ID', ),
//             textformfield(Textfieldtitle: 'Email',),
//             textformfield(Textfieldtitle: 'Mobile Number',),
//             textformfield(Textfieldtitle: 'Pharmacy Name',),
//             textformfield(Textfieldtitle: 'License Number',),
//           ],
//         ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   child: SizedBox(
//                     child: SizedBox(
//                       width: 100.0,
//                       height: 35.0,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(
//                             backgroundColor: Color(0xFFe6ea80)),
//                         child:const Text('Save', style:
//                           TextStyle(color: Colors.black87, fontSize: 15.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         )
//       ),
//     );
//   }
// }
//

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';

import '../Stock_Manager/Stock_Products_List.dart';

class order_client extends StatefulWidget {
  const order_client({Key? key}) : super(key: key);

  @override
  State<order_client> createState() {
   return _order_client();
  }

}

class _order_client extends State<order_client>{
  String selectedValue = "0";

  final client_idController = TextEditingController();
  final client_emailController = TextEditingController();
  final client_numberController = TextEditingController();
  final client_nameController = TextEditingController();
  final client_licenseController = TextEditingController();
  final client_addressController = TextEditingController();

  late DatabaseReference dbRef;

  _cleartext(){
    client_idController.clear();
    client_emailController.clear();
    client_numberController.clear();
    client_nameController.clear();
    client_licenseController.clear();
    client_addressController.clear();
  }

  void dispose(){
    client_idController.dispose();
    client_emailController.dispose();
    client_numberController.dispose();
    client_nameController.dispose();
    client_licenseController.dispose();
    client_addressController.dispose();
    super.dispose();
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
          'ORDER CLERK',
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
                  Expanded(child: Container(
                    height: 70.0,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF2F8F9D),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20.0,
                          color:  Color(0xFF7A9EB1),
                        )
                      ]),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(
                          horizontal: 2, vertical:  20),
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
                              "Add Clients",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 17, color: Colors.white),
                            ))
                      ],
                    ),
                  )),
                  Expanded(child: Container(
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
                                "List Clients",
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
                Expanded(child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.black,
                    height: 50,
                  ),)
                )
              ],
              ),
              Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'ADD CLIENTS',
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
                        controller: client_idController,
                        label: 'Client Id',
                        hinttext: 'Please enter Client Id',
                        iconname: Icons.numbers,
                      ),
                      text_input(
                        controller: client_emailController,
                        label: 'Email',
                        hinttext: 'Please enter the Email',
                        iconname: Icons.drive_file_rename_outline,
                      ),
                      text_input(
                        controller: client_numberController,
                        label: 'Contact Number',
                        hinttext: 'Please enter Contact Number',
                        iconname: Icons.numbers,
                      ),
                      text_input(
                        controller: client_nameController,
                        label: 'Pharmacy Name',
                        hinttext: 'Please enter pharmacy name',
                        iconname: Icons.drive_file_rename_outline,
                      ),
                      text_input(
                        controller: client_nameController,
                        label: 'License Number',
                        hinttext: 'Please enter license number',
                        iconname: Icons.numbers,
                      ),
                          text_input(
                            controller: client_addressController,
                            label: 'Address',
                            hinttext: 'Please enter the address',
                            iconname: Icons.drive_file_rename_outline,
                          ),
                ],
              ),),)
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: FloatingActionButton.extended(backgroundColor: Color(0xFF3A8891), onPressed: () {

                  Map<String, String> clients = {
                    'clientid' : client_idController.text,
                    'clientemail' : client_emailController.text,
                    'clientnumber' : client_numberController.text,
                    'pharmacyname' : client_nameController.text,
                    'licensenumber' : client_licenseController.text,
                    'address' : client_addressController.text,
                  };
                  dbRef.push().set(clients);
                  _cleartext();
                }, label: Text(
                    'Save Client',
                  style: GoogleFonts.ubuntu(),
                ),
                ),
              )
            ],
          )],),
        )),);
  }
}
