import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/tijdlijn_widget_rij.dart';

class NieuwsWidgetTijdlijn extends StatelessWidget {
  const NieuwsWidgetTijdlijn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.black,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Aanwinsten op komst bij Ajax"',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
              child: const Text(
                  'De aanloop was lang en vol hobbels, maar Ajax lijkt helemaal los op de transfermarkt. De verwachting is dat diverse nieuwelingen snel begroet worden.',
                  style: TextStyle(color: Colors.grey, fontSize: 12))),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (ctx, i) {
                  return TijdlijnWidgetRij(isLastItem: i == 3);
                }),
          )
        ],
      ),
    );
  }
}
