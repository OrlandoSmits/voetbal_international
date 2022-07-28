import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;

  const HeaderText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          fontSize: 20,
          color: Color(0xff009EE0),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
