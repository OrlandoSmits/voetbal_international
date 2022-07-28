import 'package:flutter/material.dart';
import 'package:voetbal_international/models/news_item.dart';
import 'package:voetbal_international/widgets/text/title_text.dart';

class NieuwsWidgetZwart extends StatelessWidget {
  final NewsItem newsItem;

  const NieuwsWidgetZwart({Key? key, required this.newsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.black,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: const Alignment(0.0, 0.8),
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0),
                    Colors.black,
                  ])),
              child: Image.network(
                newsItem.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          TitleText(title: newsItem.title),
          Container(
              padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
              child: Text(newsItem.subTitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 12))),
        ],
      ),
    );
  }
}
