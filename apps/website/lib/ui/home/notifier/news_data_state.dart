import 'package:common_data/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data_state.freezed.dart';

@freezed
sealed class NewsDataState with _$NewsDataState {
  const factory NewsDataState.initial() = NewsDataInitial;
  const factory NewsDataState.loading() = NewsDataLoading;
  const factory NewsDataState.loaded(List<News> news) = NewsDataLoaded;
  const factory NewsDataState.error(String message) = NewsDataError;
}