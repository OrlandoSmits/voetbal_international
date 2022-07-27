import 'package:vi_repository/vi_repository.dart' as vi_repository;

import 'news_item.dart';

class News {
  final List<NewsItem> newsItems;

  News({
    required this.newsItems,
  });

  factory News.fromRepository(vi_repository.News news) {
    return News(
        newsItems: news.news
            .map((n) => NewsItem(
                id: n.id,
                title: n.title,
                subTitle: n.subTitle,
                image: n.image,
                myInterest: n.myInterest))
            .toList());
  }
}
