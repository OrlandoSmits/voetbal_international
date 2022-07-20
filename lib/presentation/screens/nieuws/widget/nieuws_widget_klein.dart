import 'package:flutter/material.dart';

class NieuwsWidgetKlein extends StatelessWidget {
  const NieuwsWidgetKlein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.2),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 8, top: 16, right: 8, bottom: 16),
            child: const Text(
              'Dost over stoppen, FC Utrecht en zijn productie: "Minimaal vijftien keer"',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
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
