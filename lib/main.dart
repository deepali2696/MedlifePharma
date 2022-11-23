import 'package:flutter/material.dart';

import 'Stock_Manager/Stock_Products.dart';
import 'Stock_Manager/Stock_Products_List.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: stockproductslist(),
    );
  }
}
