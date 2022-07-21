import 'package:json_annotation/json_annotation.dart';

import 'news_item.dart';

part 'pro_news_response.g.dart';

@JsonSerializable()
class ProNewsResponse {
  final List<NewsItem> news;

  const ProNewsResponse({required this.news});

  factory ProNewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProNewsResponseFromJson(json);
}
