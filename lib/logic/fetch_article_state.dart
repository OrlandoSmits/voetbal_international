part of 'fetch_article_cubit.dart';

enum FetchArticleStatus { initial, loading, success, failure }

extension FetchArticleStatusX on FetchArticleStatus {
  bool get isInitial => this == FetchArticleStatus.initial;

  bool get isLoading => this == FetchArticleStatus.loading;

  bool get isSuccess => this == FetchArticleStatus.success;

  bool get isFailure => this == FetchArticleStatus.failure;
}

class FetchArticleState extends Equatable {
  final FetchArticleStatus status;
  final Article article;

  FetchArticleState({
    this.status = FetchArticleStatus.initial,
    Article? article,
  }) : article = article ?? Article(
    id: 0,
    image: "",
    date: "",
    time: "",
    amountOfComments: 0,
    title: "",
    author: Author(name: "", image: "")
  );

  FetchArticleState copyWith({
    FetchArticleStatus? status,
    Article? article,
  }) {
    return FetchArticleState(
      status: status ?? this.status,
      article: article ?? this.article,
    );
  }

  @override
  List<Object?> get props => [article];
}
