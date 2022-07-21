import 'package:flutter/material.dart';
import 'package:voetbal_international/models/news_item.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_klein.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_reclame_klein.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_tijdlijn.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_wit.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget_zwart.dart';

class NieuwsWidget extends StatelessWidget {
  final NewsItem newsItem;

  const NieuwsWidget({Key? key, required this.newsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NieuwsWidgetZwart(newsItem: newsItem);
    // if (newsItem == 'black') {
    //   return const NieuwsWidgetZwart();
    // } else if (newsItem == 'white') {
    //   return const NieuwsWidgetWit();
    // } else if (newsItem == 'klein') {
    //   return const NieuwsWidgetKlein();
    // } else if (newsItem == 'tijdlijn') {
    //   return const NieuwsWidgetTijdlijn();
    // } else {
    //   return const NieuwsWidgetReclameKlein();
    // }
  }
}
