import 'package:json_annotation/json_annotation.dart';
import 'package:vi_api/vi_api.dart';

import 'author.dart';

part 'article_response.g.dart';

@JsonSerializable()
class ArticleResponse {
  @JsonValue('id')
  final int id;

  @JsonValue('image')
  final String image;

  @JsonValue('date')
  final String date;

  @JsonValue('time')
  final String time;

  @JsonValue('amountOfComments')
  final int amountOfComments;

  @JsonValue('title')
  final String title;

  @JsonValue('author')
  final Author author;

  @JsonValue('content')
  final Content content;

  const ArticleResponse({
    required this.id,
    required this.image,
    required this.date,
    required this.time,
    required this.amountOfComments,
    required this.title,
    required this.author,
    required this.content,
  });

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
}
