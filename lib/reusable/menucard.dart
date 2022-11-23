

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menuoption extends StatelessWidget{
  const menuoption(
  {required this.menutext, this.padlef = 0.0, this.autofocus = false});

  final String menutext;
  final double padlef;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
    padding: EdgeInsets.fromLTRB(padlef, 5.0, 0.0, 5.0),
          child: TextButton(
            autofocus: autofocus,
            onPressed: () {},
            child: Text(
              menutext,
              style: TextStyle(fontSize: 17.0),
            ),
          ),
    )
    );
  }
}