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
          return FlutterLogo();
          // if (i == 0) {
          //   return NieuwsWidget(newsItem: 'black');
          // } else if (i == 1) {
          //   return NieuwsWidget(newsItem: 'white');
          // } else if (i == 2) {
          //   return NieuwsWidget(newsItem: 'klein');
          // } else if (i == 3) {
          //   return NieuwsWidget(newsItem: 'tijdlijn');
          // }else {
          //   return NieuwsWidget(newsItem: 'klein_reclame');
          // }
        });
  }
}
