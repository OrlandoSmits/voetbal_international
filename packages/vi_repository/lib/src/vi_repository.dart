import 'package:vi_api/vi_api.dart' hide NewsItem;

import 'models/models.dart';

class VIRepository {
  final VIApiClient _viApiClient;

  VIRepository({VIApiClient? viApiClient})
      : _viApiClient = viApiClient ?? VIApiClient();

  Future<News> fetchProNews() async {
    var proNewsResponse = await _viApiClient.fetchProNews();
    var repositoryNews = proNewsResponse.news
        .map((newsItem) => NewsItem(
            title: newsItem.title,
            subTitle: newsItem.subTitle,
            image: newsItem.image,
            myInterest: newsItem.myInterest))
        .toList();

    return News(news: repositoryNews);
  }
}
