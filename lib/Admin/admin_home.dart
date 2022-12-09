
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmamanagementsystem/Admin/admin_order_list.dart';
import 'package:pharmamanagementsystem/Admin/admin_orderclerk_add.dart';
import 'package:pharmamanagementsystem/Admin/admin_stock_list.dart';
import 'package:pharmamanagementsystem/Admin/admin_stockmanager_add.dart';

import '../Login.dart';
//import 'package:google_fonts/google_fonts.dart';

class admin_home extends StatefulWidget {
  const admin_home({Key? key}) : super(key: key);

  @override
  State<admin_home> createState() => _admin_homeState();
}

class _admin_homeState extends State<admin_home> {
  Widget _offsetPopup() => PopupMenuButton<int>(
      constraints: const BoxConstraints.expand(
        width: 97,
        height: 40,
      ),
      offset: Offset(-20.0, 60.0),
      color: Color(0xFF82DBD8),
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: EdgeInsets.only(bottom: 50,left: 15),
          value: 1,
          child: TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => login())),
            child: Text(
              "Logout",
              style: GoogleFonts.ubuntu(
                  color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
      icon: Container(
        child: Image.asset(
          'assets/logo/profile.png',
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Icons/bg.png'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: <Widget>[
              Container(
                // color: Color(0xFF41AEA9),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              //padding: EdgeInsets.only(top: 15.0),
                              child: Image.asset('assets/logo/Logo1.png'),
                              height: 65.0,
                              width: 60.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'MEDLIFE',
                                style: GoogleFonts.ubuntu(
                                    color: Color(0xFFE14D2A),
                                    //0xFFE14D2A
                                    //0xFFD1512D
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'PHARMA',
                                style: GoogleFonts.ubuntu(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 80,
                decoration: const BoxDecoration(
                  color: Color(0xFF3BACB6),
                  borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100.0)),
                  //.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    /*  const Padding(
                    padding: EdgeInsets.only(left: 20.0)
                ),*/
                    Text(
                      'Admin Dashboard',
                      style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 20.0, // fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(height: 60.0, width: 60.0, child: _offsetPopup()
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
                        height: 200.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3BACB6),
                          //0xFF9ED2C6
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0xFFA6E3E9),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/logo/stock_manager1.png',
                                  height: 65,
                                  width: 65,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: TextButton(
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => adminStockMadd())),
                                  child: Text(
                                    'Stock Manager',
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 19, color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
                        height: 200.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3BACB6),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0xFFA6E3E9),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/logo/order_clerk.png',
                                  height: 65,
                                  width: 65,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: TextButton(
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => adminOrderClerkAdd())),
                                  child: Text(
                                    'Order Clerk',
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 19, color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
                        height: 200.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3BACB6),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              // blurRadius: 5.0,
                              color: Color(0xFFA6E3E9),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/logo/order.png',
                                  height: 65,
                                  width: 65,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: TextButton(
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => adminOrderList())),
                                  child: Text(
                                    'Orders',
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 19, color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
                        height: 200.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3BACB6),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2.0,
                              color: Color(0xFFA6E3E9),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 25),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/logo/stocks.png',
                                  height: 65,
                                  width: 65,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: TextButton(
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => adminStockList())),
                                  child: Text(
                                    'Stocks',
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 19, color: Colors.black),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
