import 'package:flutter/material.dart';

class VIIcon extends StatelessWidget {
  const VIIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text('V',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xffE30713),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)),
      Text('I',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xff009EE0),
              fontWeight: FontWeight.bold)),
    ]);
  }
}
