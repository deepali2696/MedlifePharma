import 'package:flutter/material.dart';

import 'Login.dart';
import 'Stock_Products.dart';

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
      home: stockproducts(),
    );
  }
}

