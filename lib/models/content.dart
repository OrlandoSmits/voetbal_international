import 'article_content.dart';
import 'package:vi_repository/vi_repository.dart' as vi_repository;

class Content {
  final List<ArticleContent> contents;

  Content({
    required this.contents,
  });

  factory Content.fromRepository(vi_repository.Content content) {
    var articleContents =
        content.contents.map((e) => ArticleContent.fromRepository(e)).toList();

    return Content(contents: articleContents);
  }
}
