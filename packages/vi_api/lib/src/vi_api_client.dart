import 'dart:convert';

import 'package:flutter/services.dart';

import 'models/models.dart';

class ProNewsRequestFailure implements Exception {}

class LatestNewsRequestFailure implements Exception {}

class VIApiClient {
  Future<ProNewsResponse> fetchProNews() async {
    final String response =
        await rootBundle.loadString('packages/vi_api/assets/data/pro_news.json');
    final data = await jsonDecode(response) as Map<String, dynamic>;

    return ProNewsResponse.fromJson(data);
  }

  Future<ArticleResponse> fetchArticle(int articleId) async {
    final String response =
        await rootBundle.loadString('packages/vi_api/assets/data/article$articleId.json');

    final data = await jsonDecode(response) as Map<String, dynamic>;

    return ArticleResponse.fromJson(data);
  }
}
