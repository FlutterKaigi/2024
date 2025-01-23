import 'dart:convert';

import 'package:common_data/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_repository_impl.freezed.dart';
part 'news_repository_impl.g.dart';

final class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl();

  @override
  Future<List<News>> getNews() async {
    final json = jsonDecode(_jsonContent) as List<dynamic>;
    final result =
        json.map((e) => NewsTable.fromJson(e as Map<String, dynamic>)).toList();
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
    required DateTime startedAt,
    required DateTime? endedAt,
  }) = _NewsTable;

  factory NewsTable.fromJson(Map<String, dynamic> json) =>
      _$NewsTableFromJson(json);
}

const _jsonContent =
    '''[{"id":11,"text":"FlutterKaigi 2024 — 有明セントラルタワーホール＆カンファレンスへのアクセス・ランチ情報","url":"https://medium.com/flutterkaigi/flutterkaigi-2024-%E6%9C%89%E6%98%8E%E3%82%BB%E3%83%B3%E3%83%88%E3%83%A9%E3%83%AB%E3%82%BF%E3%83%AF%E3%83%BC%E3%83%9B%E3%83%BC%E3%83%AB-%E3%82%AB%E3%83%B3%E3%83%95%E3%82%A1%E3%83%AC%E3%83%B3%E3%82%B9%E3%81%B8%E3%81%AE%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9-%E3%83%A9%E3%83%B3%E3%83%81%E6%83%85%E5%A0%B1-68ee1681c159","started_at":"2024-11-18T15:00:00+00:00","ended_at":null},{"id":10,"text":"FlutterKaigi 2024、多言語対応します ~ FlutterKaigi 2024 Will Support Multiple Languages~","url":"https://medium.com/flutterkaigi/flutterkaigi-2024-%E5%A4%9A%E8%A8%80%E8%AA%9E%E5%AF%BE%E5%BF%9C%E3%81%97%E3%81%BE%E3%81%99-flutterkaigi-2024-will-support-multiple-languages-e7a848ded24d","started_at":"2024-11-18T15:00:00+00:00","ended_at":null},{"id":9,"text":"ゆめみの挑戦とFlutterへの取り組み：よーたん氏と福太郎 氏にインタビュー","url":"https://medium.com/flutterkaigi/%E3%82%86%E3%82%81%E3%81%BF%E3%81%AE%E6%8C%91%E6%88%A6%E3%81%A8flutter%E3%81%B8%E3%81%AE%E5%8F%96%E3%82%8A%E7%B5%84%E3%81%BF-%E3%82%88%E3%83%BC%E3%81%9F%E3%82%93%E6%B0%8F%E3%81%A8%E7%A6%8F%E5%A4%AA%E9%83%8E-%E6%B0%8F%E3%81%AB%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%93%E3%83%A5%E3%83%BC-d0d79e006dd4","started_at":"2024-11-18T15:00:00+00:00","ended_at":null},{"id":8,"text":"FlutterKaigi 2024 スタンプラリーのご案内","url":"https://medium.com/flutterkaigi/flutterkaigi-2024-%E3%82%B9%E3%82%BF%E3%83%B3%E3%83%97%E3%83%A9%E3%83%AA%E3%83%BC%E3%81%AE%E3%81%94%E6%A1%88%E5%86%85-50ee403e782d","started_at":"2024-11-17T15:00:00+00:00","ended_at":null},{"id":7,"text":"FlutterKiaig mini #2ふりかえり","url":"https://medium.com/flutterkaigi/flutterkiaig-mini-2%E3%81%B5%E3%82%8A%E3%81%8B%E3%81%88%E3%82%8A-89d13c79c000","started_at":"2024-11-13T15:00:00+00:00","ended_at":null},{"id":6,"text":"FlutterKaigi 2024 公式アプリについて","url":"https://medium.com/flutterkaigi/flutterkaigi-2024-公式アプリについて-033a58493489","started_at":"2024-11-07T10:00:00+00:00","ended_at":null},{"id":5,"text":"FlutterKaigiのスポンサー企業にインタビュー（Vol.1）","url":"https://medium.com/flutterkaigi/flutterkaigiのスポンサー企業にインタビュー-vol-1-21e82c9bc9e2","started_at":"2024-11-01T00:00:00+00:00","ended_at":null},{"id":4,"text":"FlutterKaigi 2024前夜祭を開催します","url":"https://medium.com/flutterkaigi/flutterkaigi-2024前夜祭を開催します-5e7ff7ba3947","started_at":"2024-10-29T01:00:00+00:00","ended_at":null},{"id":3,"text":"FlutterKaigi 2024 公式プロジェクトについて","url":"https://medium.com/flutterkaigi/flutterkaigi-2024-公式プロジェクトについて-2a94530837c7","started_at":"2024-10-25T06:00:00+00:00","ended_at":null},{"id":2,"text":"FlutterKaigi 2024のチケットを10月7日(月)に販売開始します","url":"https://medium.com/flutterkaigi/flutterkaigi-2024%E3%81%AE%E3%83%81%E3%82%B1%E3%83%83%E3%83%88%E3%82%9210%E6%9C%887%E6%97%A5-%E6%9C%88-%E3%81%AB%E8%B2%A9%E5%A3%B2%E9%96%8B%E5%A7%8B%E3%81%97%E3%81%BE%E3%81%99-aeeb1d4d1da7","started_at":"2024-10-03T15:00:00+00:00","ended_at":null}]''';
