import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pharmamanagementsystem/Admin/adminusersadd.dart';
import 'package:pharmamanagementsystem/OrderClerk/listofclient.dart';
import 'package:pharmamanagementsystem/Stock_Manager/Stock_Products_List.dart';

import 'Stock_Manager/Stock_Products.dart';

import 'Stock_Manager/Stock_list_stock.dart';
import 'Login.dart';
import 'OrderClerk/Client.dart';
import 'OrderClerk/Orders.dart';
import 'Stock_Manager/Stock_list_order.dart';



void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  // ).whenComplete(
  //         () => print('FIREBASE INITIALIZED================>'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
