import 'package:json_annotation/json_annotation.dart';

part 'news_item.g.dart';

@JsonSerializable()
class NewsItem {
  @JsonValue('title')
  final String title;

  @JsonValue('subTitle')
  final String subTitle;

  @JsonValue('image')
  final String image;

  NewsItem({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);
}
