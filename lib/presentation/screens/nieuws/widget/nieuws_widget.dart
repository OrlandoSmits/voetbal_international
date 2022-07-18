import 'package:flutter/material.dart';

class NieuwsWidget extends StatelessWidget {
  const NieuwsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Image.asset('assets/images/nieuws.jpeg'),
          Container(
              margin: EdgeInsets.only(left: 4, bottom: 8),
              alignment: Alignment.topLeft,
              child: Text('Dost over stoppen, FC Utrecht en zijn productie: "Minimaal vijftien keer"',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),)),
          Container(
              margin: EdgeInsets.only(left: 4, bottom: 8),
              color: Colors.black,
              alignment: Alignment.topLeft,
              child: Text('In gesprek met Bas Dost over verborgen agendas, de innerlijke goalgetter en torenhoge verwachtingen. "Ja ik heb met de gedachte gespeeld te stoppen"'
                  , style: TextStyle(color: Colors.grey, fontSize: 12))),
        ],
      ),
    );
    return Container(child: Text('Dit is een widget'));
  }
}
