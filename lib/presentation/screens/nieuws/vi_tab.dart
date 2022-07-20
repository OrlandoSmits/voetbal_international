import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget.dart';

class VITab extends StatefulWidget {
  const VITab({Key? key}) : super(key: key);

  @override
  State<VITab> createState() => _VITabState();
}

class _VITabState extends State<VITab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 5,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (ctx, i) {
          if (i == 0) {
            return NieuwsWidget(widgetType: 'black');
          } else if (i == 1) {
            return NieuwsWidget(widgetType: 'white');
          } else if (i == 2) {
            return NieuwsWidget(widgetType: 'klein');
          } else if (i == 3) {
            return NieuwsWidget(widgetType: 'tijdlijn');
          }else {
            return NieuwsWidget(widgetType: 'klein_reclame');
          }
        });
  }
}
