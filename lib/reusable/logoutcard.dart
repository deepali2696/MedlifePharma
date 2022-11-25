import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login.dart';

class logoutbtn extends StatefulWidget {
  const logoutbtn({Key? key}) : super(key: key);

  @override
  State<logoutbtn> createState() => _logoutbtnState();
}

class _logoutbtnState extends State<logoutbtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70.0,
      child: SizedBox(
        width: 100.0,
        height: 40.0,
        child: FloatingActionButton.extended(
          extendedTextStyle: TextStyle(fontSize: 17.0),
          backgroundColor: Colors.red,
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),),
          label: Text('Logout'),
          icon: Icon(Icons.logout),
        ),
      ),
    );
  }
}
