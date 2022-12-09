import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_order.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_list_stock.dart';

import 'Stock_products_list.dart';

class stock_home extends StatefulWidget {
  const stock_home({Key? key}) : super(key: key);

  @override
  State<stock_home> createState() => _stock_homeState();
}

class _stock_homeState extends State<stock_home> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo/bg.png'),fit: BoxFit.cover)),
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/logo/Logo1.png',
                          width: 65,
                          height: 60,
                        ),
                      ),
                      Container(
                        child: Text(
                          'MEDLIFE ',
                          style: GoogleFonts.ubuntu(
                              fontSize: 28,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: Text(
                          'PHARMA ',
                          style: GoogleFonts.ubuntu(
                              fontSize: 28,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                "assets/logo/profile.png",
                                width: 52,
                                height: 52,
                              ),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: option_card(
                    address: 'assets/logo/pills.png',
                    width: 55,
                    height: 55,
                    label: 'Products',
                    page: stock_product(),
                  ),
                ),
                const Expanded(
                  child: option_card(
                    address: 'assets/logo/inventory.png',
                    width: 65,
                    height: 55,
                    label: 'Stocks',
                    page: stockmanagerstock(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  <Widget>[
                Expanded(
                  child: option_card(
                    address: 'assets/logo/orders.png',
                    width: 55,
                    height: 55,
                    label: 'Orders',
                    page: stockmanagerorder(),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class option_card extends StatelessWidget {
  const option_card(
      {super.key,
      required this.address,
      required this.label,
      required this.width,
      required this.height,
      this.page});

  final address;
  final label;
  final double width;
  final double height;
  final page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163.0,
      margin: EdgeInsets.all(9.0),
      decoration: BoxDecoration(
          color: Color(0xFF9ED2C6),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0xFF90C8AC),
            )
          ]),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  address,
                  width: width,
                  height: height,
                ),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page)),
                  child: Text(
                    label,
                    style: GoogleFonts.ubuntu(fontSize: 20),
                  )))
          // InkWell(
          //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => stock_product()),)
          // ),
        ],
      ),
    );
  }
}
