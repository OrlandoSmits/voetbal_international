import 'package:vi_repository/vi_repository.dart' as vi_repository;
import 'package:voetbal_international/models/models.dart';

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

  factory Article.fromRepository(vi_repository.Article article) {
    return Article(
        id: article.id,
        image: article.image,
        date: article.date,
        time: article.time,
        amountOfComments: article.amountOfComments,
        title: article.title,
        author: Author.fromRepository(article.author));
  }
}
