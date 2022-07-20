import 'package:flutter/material.dart';

class NieuwsWidgetReclameKlein extends StatelessWidget {
  const NieuwsWidgetReclameKlein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:24, bottom: 24, left: 8, right: 8),
          child: Card(
            margin: const EdgeInsets.only(left: 8, right: 8),
            color: Colors.black,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 0.2),
            ),
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                    child: Text(
                      'Maak een vriend lid van VI PRO en verdien €20,-'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.only(left: 32, right: 16, top: 16, bottom: 16),
                      color: Color(0xff009EE0),
                      child: TextButton(
                        onPressed: () {
                          print("JEUJ");
                        },
                        child: const Text(
                            'Profiteer',
                            style: TextStyle(color: Colors.white, fontSize: 16)),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
