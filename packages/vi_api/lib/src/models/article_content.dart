import 'package:json_annotation/json_annotation.dart';

part 'article_content.g.dart';

@JsonSerializable()
class ArticleContent {
  @JsonValue("articleType")
  final String articleType;

  @JsonValue("articleContent")
  final String articleContent;

  @JsonValue("imageDescription")
  String? imageDescription;

  ArticleContent({
    required this.articleType,
    required this.articleContent,
    this.imageDescription,
  });

  factory ArticleContent.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentFromJson(json);
}
