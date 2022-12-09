import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pharmamanagementsystem/Admin/admin_home.dart';
import 'package:pharmamanagementsystem/Admin/admin_orderclerk_add.dart';
import 'package:pharmamanagementsystem/Admin/admin_orderclerk_list.dart';
import 'package:pharmamanagementsystem/Admin/admin_stockmanager_list.dart';
import 'package:pharmamanagementsystem/OrderClerk/Client.dart';
import 'package:pharmamanagementsystem/OrderClerk/listoforders.dart';
import 'package:pharmamanagementsystem/landing.dart';
import 'Admin/admin_order_list.dart';
import 'Admin/admin_stock_list.dart';
import 'Admin/admin_stockmanager_add.dart';
import 'Login.dart';
import 'OrderClerk/listofclient.dart';
import 'Stock_Manager/Stock_Products_List.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingsplash(),

    );
  }
}
