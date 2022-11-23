import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';

class order extends StatefulWidget{
  _orderState createState() => _orderState();
}

class _orderState extends State<order>  {
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
                  const screentitle(
                    title: 'ORDER CLERK',
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
                      'Add New Order',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  textformfield(Textfieldtitle: 'Order ID', ),
                  textformfield(Textfieldtitle: 'Product Name',),
                  textformfield(Textfieldtitle: 'Client Name',),
                  textformfield(Textfieldtitle: 'Quantity',),
                  textformfield(Textfieldtitle: 'Date',),
                  textformfield(Textfieldtitle: 'Total')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      child: SizedBox(
                        width: 100.0,
                        height: 35.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFe6ea80)),
                          child:const Text('Save', style:
                          TextStyle(color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}



