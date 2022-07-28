import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vi_repository/vi_repository.dart' show VIRepository;

import '../models/article.dart';
import '../models/author.dart';
import '../models/content.dart';

part 'fetch_article_state.dart';

class FetchArticleCubit extends Cubit<FetchArticleState> {
  final VIRepository _viRepository;

  FetchArticleCubit(this._viRepository) : super(FetchArticleState());

  Future<void> fetch(int articleId) async {
    try {
      final article =
          Article.fromRepository(await _viRepository.fetchArticle(articleId));

      emit(
          state.copyWith(status: FetchArticleStatus.success, article: article));
    } on Exception {
      emit(state.copyWith(status: FetchArticleStatus.failure));
    }
  }
}
