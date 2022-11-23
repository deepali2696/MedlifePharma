import 'package:flutter/cupertino.dart';

class imagecard extends StatelessWidget {
  const imagecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF4f7f84)),
      alignment: Alignment.center,
      width: double.infinity,
      height: 140.0,
      child: Image.asset(
        'logo/Logo2.png',
        height: 120.0,
      ),
    );
  }
}