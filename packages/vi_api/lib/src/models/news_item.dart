import 'package:json_annotation/json_annotation.dart';

import 'content.dart';

part 'news_item.g.dart';

@JsonSerializable()
class NewsItem {
  @JsonValue("id")
  final int id;

  @JsonValue('title')
  final String title;

  @JsonValue('subTitle')
  final String subTitle;

  @JsonValue('image')
  final String image;

  @JsonValue('myInterest')
  final bool myInterest;

  NewsItem({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.myInterest,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
}
