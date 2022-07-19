import 'package:flutter/material.dart';

class NieuwsWidget extends StatelessWidget {
  const NieuwsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.black,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: const Alignment(0.0, 0.8),
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black,
                      ])),
              child: Image.asset(
                'assets/images/nieuws.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Dost over stoppen, FC Utrecht en zijn productie: "Minimaal vijftien keer"',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
              child: const Text(
                  'In gesprek met Bas Dost over verborgen agendas, de innerlijke goalgetter en torenhoge verwachtingen. "Ja ik heb met de gedachte gespeeld te stoppen"',
                  style: TextStyle(color: Colors.grey, fontSize: 12))),
        ],
      ),
    );
  }
}
