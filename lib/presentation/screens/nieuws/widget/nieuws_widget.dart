import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_wit.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_zwart.dart';

class NieuwsWidget extends StatelessWidget {
  final String widgetType;
  const NieuwsWidget({Key? key, required this.widgetType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(widgetType == 'black') {
      return NieuwsWidgetZwart();
    } else {
      return NieuwsWidgetWit();
    }
  }
}
