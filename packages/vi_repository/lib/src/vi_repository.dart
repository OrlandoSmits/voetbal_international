import 'package:vi_api/vi_api.dart' hide NewsItem, Article;

import 'models/models.dart';

class VIRepository {
  final VIApiClient _viApiClient;

  VIRepository({VIApiClient? viApiClient})
      : _viApiClient = viApiClient ?? VIApiClient();

  Future<News> fetchProNews() async {
    var proNewsResponse = await _viApiClient.fetchProNews();
    var repositoryNews = proNewsResponse.news
        .map((newsItem) => NewsItem(
            id: newsItem.id,
            title: newsItem.title,
            subTitle: newsItem.subTitle,
            image: newsItem.image,
            myInterest: newsItem.myInterest))
        .toList();

    return News(news: repositoryNews);
  }

  Future<Article> fetchArticle(int articleId) async {
    var articleResponse = await _viApiClient.fetchArticle(articleId);
    return Article.fromResponse(articleResponse);
  }
}
