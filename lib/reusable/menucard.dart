

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menuoption extends StatelessWidget{
  const menuoption(
  {required this.menutext, this.padlef = 0.0, this.autofocus = false, this.des});

  final String menutext;
  final double padlef;
  final bool autofocus;
  final des;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
    padding: EdgeInsets.fromLTRB(padlef, 5.0, 0.0, 5.0),
          child: TextButton(
            autofocus: autofocus,
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  des),),
            child: Text(
              menutext,
              style: TextStyle(fontSize: 17.0),
            ),
          ),
    )
    );
  }
}