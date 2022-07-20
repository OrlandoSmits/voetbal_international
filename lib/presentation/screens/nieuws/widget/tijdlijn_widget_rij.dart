import 'package:flutter/material.dart';

class TijdlijnWidgetRij extends StatelessWidget {
  final bool isLastItem;
  const TijdlijnWidgetRij({Key? key, required this.isLastItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(
            Icons.my_location,
            color: Colors.white,
          ),
          Builder(
            builder: (context) {
              if (!isLastItem) {
                return Container(
                    padding: const EdgeInsets.only(left: 4),
                    alignment: Alignment.centerLeft,
                    height: 20,
                    child: const VerticalDivider(
                      color: Colors.white,
                      thickness: 2.0,
                    ));
              } else {
                return SizedBox(height: 20);
              }
            }
          )
        ])),
        const Expanded(
          flex: 8,
          child: Text(
            'Brobbey, Bassey en Conceicao op een haar na Ajaxied',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
    return const Text('text', style: const TextStyle(color: Colors.white));
  }
}
