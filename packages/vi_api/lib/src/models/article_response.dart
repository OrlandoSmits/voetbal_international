import 'package:json_annotation/json_annotation.dart';

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

  const ArticleResponse({
    required this.id,
    required this.image,
    required this.date,
    required this.time,
    required this.amountOfComments,
    required this.title,
    required this.author,
  });

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
}
