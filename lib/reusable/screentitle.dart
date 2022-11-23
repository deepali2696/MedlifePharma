import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class screentitle extends StatelessWidget {
  const screentitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70.0,
      child: Text(title,
          style: GoogleFonts.acme(fontSize: 28.0, color: Colors.black45)),
    );
  }
}