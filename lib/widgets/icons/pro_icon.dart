import 'package:flutter/material.dart';

class ProIcon extends StatelessWidget {
  const ProIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
          )),
      child: const Text(
        'PRO',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.0),
      ),
    );
  }
}
