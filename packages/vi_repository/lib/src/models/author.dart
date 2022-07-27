import 'package:vi_api/vi_api.dart';

class Author {
  final String name;
  final String image;

  Author({
    required this.name,
    required this.image,
  });

  factory Author.fromResponse(ArticleResponse articleResponse) {
    return Author(
        name: articleResponse.author.name, image: articleResponse.author.image);
  }
}
