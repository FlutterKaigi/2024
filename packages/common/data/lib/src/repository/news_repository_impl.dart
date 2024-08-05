import 'package:common_data/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'news_repository_impl.freezed.dart';
part 'news_repository_impl.g.dart';

final class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  @override
  Future<List<News>> getNews() async {
    final result = await _supabaseClient
        .from('news')
        .select()
        .order('started_at', ascending: false)
        .withConverter(
          (json) => json.map(NewsTable.fromJson).toList(),
        );
    return result
        .map(
          (news) => News(
            id: news.id,
            text: news.text,
            url: Uri.parse(news.url),
            startedAt: news.startedAt,
            endedAt: news.endedAt,
          ),
        )
        .toList();
  }
}

@freezed
class NewsTable with _$NewsTable {
  const factory NewsTable({
    required int id,
    required String text,
    required String url,
    @JsonKey(name: 'started_at') required DateTime startedAt,
    @JsonKey(name: 'ended_at') required DateTime endedAt,
  }) = _NewsTable;

  factory NewsTable.fromJson(Map<String, dynamic> json) =>
      _$NewsTableFromJson(json);
}
