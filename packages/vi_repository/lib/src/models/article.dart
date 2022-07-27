import 'package:vi_api/vi_api.dart';

import 'author.dart';

class Article {
  final int id;
  final String image;
  final String date;
  final String time;
  final int amountOfComments;
  final String title;
  final Author author;

  Article({
    required this.id,
    required this.image,
    required this.date,
    required this.time,
    required this.amountOfComments,
    required this.title,
    required this.author,
  });

  factory Article.fromResponse(ArticleResponse articleResponse) {
    return Article(
        id: articleResponse.id,
        image: articleResponse.image,
        date: articleResponse.date,
        time: articleResponse.time,
        amountOfComments: articleResponse.amountOfComments,
        title: articleResponse.title,
        author: Author.fromResponse(articleResponse)
    );
  }
}
