import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget.dart';

class ProTab extends StatefulWidget {
  const ProTab({Key? key}) : super(key: key);

  @override
  State<ProTab> createState() => _ProTabState();
}

class _ProTabState extends State<ProTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          child: ToggleSwitch(
            cornerRadius: 5,
            minWidth: MediaQuery.of(context).size.width,
            initialLabelIndex: 0,
            totalSwitches: 2,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey,
            activeBorders: [
              Border.all(width: 2, color: const Color(0xff009EE0))
            ],
            borderColor: const [Colors.grey],
            borderWidth: 0.5,
            labels: const ['Alle verhalen', 'Mijn interesses'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
        Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (ctx, i) {
                if(i.isEven) {
                  return NieuwsWidget(widgetType: 'black');
                } else {
                  return NieuwsWidget(widgetType: 'white');
                }
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              )),
        ),
      ],
    );
    return const Text('this is the pro tab');
  }
}
