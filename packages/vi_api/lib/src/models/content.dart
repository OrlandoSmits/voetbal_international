import 'package:json_annotation/json_annotation.dart';

import 'article_content.dart';

part 'content.g.dart';
@JsonSerializable()
class Content {

  List<ArticleContent> contents;

  Content({
    required this.contents,
  });

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
}