part of 'fetch_pro_news_cubit.dart';

enum FetchProNewsStatus { initial, loading, success, failure }

extension FetchProNewsStatusX on FetchProNewsStatus {
  bool get isInitial => this == FetchProNewsStatus.initial;

  bool get isLoading => this == FetchProNewsStatus.loading;

  bool get isSuccess => this == FetchProNewsStatus.success;

  bool get isFailure => this == FetchProNewsStatus.failure;
}

class FetchProNewsState extends Equatable {
  final FetchProNewsStatus status;
  final News news;

  FetchProNewsState({
    this.status = FetchProNewsStatus.initial,
    News? news,
  }) : news = news ?? News(newsItems: []);

  FetchProNewsState copyWith({
    FetchProNewsStatus? status,
    News? news,
  }) {
    return FetchProNewsState(
      status: status ?? this.status,
      news: news ?? this.news,
    );
  }

  @override
  List<Object?> get props => [news];
}
