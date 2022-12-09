// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pharmamanagementsystem/reusable/imagecard.dart';
// import 'package:pharmamanagementsystem/reusable/logoutcard.dart';
// import 'package:pharmamanagementsystem/reusable/menucard.dart';
// import 'package:pharmamanagementsystem/reusable/screentitle.dart';
// import 'package:pharmamanagementsystem/reusable/userinputcard.dart';
//
// import 'Client.dart';
//
// class order extends StatefulWidget{
//   _orderState createState() => _orderState();
// }
//
// class _orderState extends State<order>  {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF7AB4BD),
//       body: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   const screentitle(
//                     title: 'ORDER CLERK',
//                   ),
//                  const logoutbtn(),
//                 ],
//               ),
//               Column(
//                 children: const <Widget>[
//                   imagecard(),
//                 ],
//               ),
//               Container(
//                 color: const Color(0xFFc3eaf0),
//                 child: Row(
//                   children:<Widget>[
//                     ButtonBar(
//                       alignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         menuoption(
//                             menutext: 'Client', padlef: 70.0, autofocus: false,des: client(),),
//                         menuoption(
//                             menutext: 'Orders', padlef: 80.0, autofocus: true,des: order(),)
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Column(
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
//                     alignment: Alignment.centerLeft,
//                     child: const Text(
//                       'Add New Order',
//                       style: TextStyle(
//                           fontSize: 17.0,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   textformfield(Textfieldtitle: 'Order ID',),
//                   textformfield(Textfieldtitle: 'Product Name',),
//                   textformfield(Textfieldtitle: 'Client Name',),
//                   textformfield(Textfieldtitle: 'Quantity',),
//                   textformfield(Textfieldtitle: 'Date',),
//                   textformfield(Textfieldtitle: 'Total')
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     child: SizedBox(
//                       child: SizedBox(
//                         width: 100.0,
//                         height: 35.0,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: TextButton.styleFrom(
//                               backgroundColor: Color(0xFFe6ea80)),
//                           child:const Text('Save', style:
//                           TextStyle(color: Colors.black87, fontSize: 15.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           )
//       ),
//     );
//   }
// }
//
//
//
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pharmamanagementsystem/OrderClerk/listofclient.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';

import '../Stock_Manager/Stock_Products_List.dart';

class order_order extends StatefulWidget {
  const order_order({Key? key}) : super(key: key);

  @override
  State<order_order> createState() {
    return _order_order();
    
  }

}

class _order_order extends State<order_order>{

    String selectedValue = "0";

    TextEditingController dateInput = TextEditingController();

    final order_idController = TextEditingController();
    final order_productnameController = TextEditingController();
    final order_clientnameController = TextEditingController();
    final order_orderquantityController = TextEditingController();
    final order_totalpriceontroller = TextEditingController();
    final order_dateController = TextEditingController();

    late DatabaseReference dbRef;

    @override
    void initState() {
      order_dateController.text = ""; //set the initial value of text field
      super.initState();
      dbRef = FirebaseDatabase.instance.ref().child('Orders');
    }

    _cleartext(){
      order_idController.clear();
      order_productnameController.clear();
      order_clientnameController.clear();
      order_orderquantityController.clear();
      order_totalpriceontroller.clear();
      order_dateController.clear();
    }

    void dispose(){
      order_idController.dispose();
      order_productnameController.dispose();
      order_clientnameController.dispose();
      order_orderquantityController.dispose();
      order_totalpriceontroller.dispose();
      order_dateController.dispose();
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
                                        "Add Orders",
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
                                                    listofclient())),
                                        child: Text(
                                          "List Orders",
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
                                'ADD Orders',
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
                                text_input(
                                  controller: order_idController,
                                  label: 'Order Id',
                                  hinttext: 'Please enter Order Id',
                                  iconname: Icons.numbers,
                                ),
                                text_input(
                                  controller: order_productnameController,
                                  label: 'Product Name',
                                  hinttext: 'Please enter product Name',
                                  iconname: Icons.drive_file_rename_outline,
                                ),
                                text_input(
                                  controller: order_clientnameController,
                                  label: 'Client Name',
                                  hinttext: 'Please enter client Name',
                                  iconname: Icons.drive_file_rename_outline,
                                ),
                                text_input(
                                  controller: order_orderquantityController,
                                  label: 'Order Quantity',
                                  hinttext: 'Please enter Order quantity',
                                  iconname: Icons.numbers,
                                ),
                                SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 10),
                                        child: TextField(
                                          controller: order_dateController,
                                          //editing controller of this TextField
                                          decoration: InputDecoration(
                                            border: const UnderlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20.0),
                                              ),
                                            ),
                                            prefixIcon: Icon(Icons
                                                .calendar_today), //icon of text field
                                            labelText: "Order Date",
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
                                                order_dateController.text =
                                                    formattedDate; //set output date to TextField value.
                                              });
                                            } else {}
                                          },
                                        ))),
                                text_input(
                                  controller: order_totalpriceontroller,
                                  label: 'Total Price',
                                  hinttext: 'Please enter Order price',
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

                              Map<String, String> orders = {
                                'orderid' : order_idController.text,
                                'productname' : order_productnameController.text,
                                'clientname' : order_clientnameController.text,
                                'orderdate' : order_dateController.text,
                                'orderquantity' : order_orderquantityController.text,
                                'Totalprice' : order_totalpriceontroller.text,
                              };


                              dbRef.push().set(orders);

                              _cleartext();
                            },
                            label: Text(
                              'Save Orders',
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
