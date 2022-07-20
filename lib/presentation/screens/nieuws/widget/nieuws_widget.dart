import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_klein.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_reclame_klein.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_tijdlijn.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_wit.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_zwart.dart';

class NieuwsWidget extends StatelessWidget {
  final String widgetType;

  const NieuwsWidget({Key? key, required this.widgetType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (widgetType == 'black') {
      return const NieuwsWidgetZwart();
    } else if (widgetType == 'white') {
      return const NieuwsWidgetWit();
    } else if (widgetType == 'klein') {
      return const NieuwsWidgetKlein();
    } else if (widgetType == 'tijdlijn') {
      return const NieuwsWidgetTijdlijn();
    } else {
      return const NieuwsWidgetReclameKlein();
    }
  }
}
