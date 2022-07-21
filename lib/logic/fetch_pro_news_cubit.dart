import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vi_repository/vi_repository.dart' show VIRepository;
import 'package:voetbal_international/models/news.dart';

part 'fetch_pro_news_state.dart';

class FetchProNewsCubit extends Cubit<FetchProNewsState> {
  final VIRepository _viRepository;

  FetchProNewsCubit(this._viRepository) : super(FetchProNewsState());

  Future<void> fetch() async {
    try {
      final news = News.fromRepository(await _viRepository.fetchProNews());

      emit(state.copyWith(status: FetchProNewsStatus.success, news: news));
    } on Exception {
      emit(state.copyWith(status: FetchProNewsStatus.failure));
    }
  }

  Future<void> fetchMyInterestsNews() async {
    try {
      final filteredNewsItems = News.fromRepository(await _viRepository.fetchProNews())
          .newsItems.where((item) => item.myInterest == true).toList();

      emit(state.copyWith(status: FetchProNewsStatus.success, news: News(newsItems: filteredNewsItems)));
    } on Exception {
      emit(state.copyWith(status: FetchProNewsStatus.failure));
    }
  }
}
