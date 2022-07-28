import 'package:vi_api/vi_api.dart' hide ArticleContent;

import 'article_content.dart';

class Content {
  final List<ArticleContent> contents;

  Content({
    required this.contents,
  });

  factory Content.fromResponse(ArticleResponse articleResponse) {
    var articleContents = articleResponse.content.contents
        .map((e) => ArticleContent(
            articleType: e.articleType, articleContent: e.articleContent, imageDescription: e.imageDescription))
        .toList();
    return Content(contents: articleContents);
  }
}
