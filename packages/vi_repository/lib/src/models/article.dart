import 'package:vi_api/vi_api.dart' hide Content;

import 'author.dart';
import 'content.dart';

class Article {
  final int id;
  final String image;
  final String date;
  final String time;
  final int amountOfComments;
  final String title;
  final Author author;
  final Content content;

  Article({
    required this.id,
    required this.image,
    required this.date,
    required this.time,
    required this.amountOfComments,
    required this.title,
    required this.author,
    required this.content,
  });

  factory Article.fromResponse(ArticleResponse articleResponse) {
    return Article(
        id: articleResponse.id,
        image: articleResponse.image,
        date: articleResponse.date,
        time: articleResponse.time,
        amountOfComments: articleResponse.amountOfComments,
        title: articleResponse.title,
        author: Author.fromResponse(articleResponse),
        content: Content.fromResponse(articleResponse)
    );
  }
}
