import 'package:flutter/material.dart';

class textformfield extends StatelessWidget{
  const textformfield({required this.Textfieldtitle});
  
  final String Textfieldtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 25.0, 20.0, 10.0),
        child: Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
            ),
            Expanded(
              flex: 1,
              child: Text(
                '$Textfieldtitle:',
                style: const TextStyle(fontSize: 17.0),
              ),
            ),
            Expanded(
              flex: 3,
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0),
                    ),
                  ),
                  hintText: 'Enter a $Textfieldtitle',
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            )
          ],
        )
    );
  }
}