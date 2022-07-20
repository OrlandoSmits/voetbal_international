import 'package:flutter/material.dart';

class NieuwsWidgetWit extends StatelessWidget {
  const NieuwsWidgetWit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.2),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/nieuws.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Dost over stoppen, FC Utrecht en zijn productie: "Minimaal vijftien keer"',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
              child: const Text(
                  'In gesprek met Bas Dost over verborgen agendas, de innerlijke goalgetter en torenhoge verwachtingen. "Ja ik heb met de gedachte gespeeld te stoppen"',
                  style: TextStyle(color: Colors.black, fontSize: 12))),
        ],
      ),
    );
  }
}
