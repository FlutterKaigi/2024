import 'dart:convert';

import 'package:common_data/src/model/job_board.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'job_board_repository.g.dart';

@Riverpod(keepAlive: true)
JobBoardRepository jobBoardRepository(Ref ref) => JobBoardRepository();

class JobBoardRepository {
  JobBoardRepository();

  Future<List<JobBoard>> fetchJobBoards() async {
    final json = jsonDecode(_jsonContent) as List<dynamic>;
    final response = json
        .map((e) => JobBoardTable.fromJson(e as Map<String, dynamic>))
        .toList();
    return response
        .map(
          (jobBoard) => JobBoard(
            id: jobBoard.id,
            uri: Uri.parse(jobBoard.url),
            altText: jobBoard.altText,
            imageUri: Uri.file(
              'supabase/seed-storage/job_boards/${jobBoard.imageName}',
            ),
          ),
        )
        .toList();
  }
}

const _jsonContent =
    r'''[{"id":8,"url":"https://hrmos.co/pages/yumemi/jobs/201050300000","alt_text":"株式会社ゆめみのFlutter採用情報","image_name":"920d5844-4a38-4603-8a48-c9cac0b3a276.webp"},{"id":18,"url":"https://hrmos.co/pages/demaecan/jobs?category=1610901862163755008","alt_text":"出前館ではエンジニアポジションを多数募集中です！ご興味いただける方のご応募お待ちしております！","image_name":"085b198f-3e76-4969-9985-dc9c3881d369.webp"},{"id":20,"url":"https://www.team-lab.com/recruit/career/flutter/?utm_source=banner&utm_medium=web&utm_campaign=FlutterKaigi2024","alt_text":"チームラボ Flutterエンジニア 積極採用中！","image_name":"17b1802e-cde1-40c2-8bcd-9ad096d997a5.webp"},{"id":4,"url":"https://www.recruit.co.jp/employment/mid-career/?utm_source=conference&utm_medium=referral&utm_campaign=202411flutter","alt_text":"株式会社リクルート","image_name":"3393faac-27df-441f-8471-b7ba55f55ab4.webp"},{"id":6,"url":"https://www.cyberagent.co.jp/careers/professional/","alt_text":"メディア事業、広告事業、ゲーム事業と多様な事業を展開するサイバーエージェントでは、新たな縦読みマンガアプリ「ジャンプTOON」や競輪・オートレースの投票サービス「WINTICKET」、恋活・婚活マッチングアプリ「タップル」、AI事業本部アプリ運用カンパニーなど様々なプロダクトをFlutterで開発しています。当社に興味を持ってくださった方は、\nぜひ各募集要項をご確認ください。","image_name":"421389ec-a9e0-4b7c-9d44-eb41fbf6ef94.webp"},{"id":17,"url":"https://herp.careers/v1/bitkeyinc/sypAepKT0ANl","alt_text":"株式会社ビットキー　Flutterエンジニア募集中","image_name":"d64e27af-a422-427d-862a-3f536a512dc5.webp"},{"id":9,"url":"https://youtrust.jp/companies/youtrust","alt_text":"株式会社YOUTRUST - 採用情報","image_name":"6b499f14-ee11-4fb2-b3c3-599fcde24d38.webp"},{"id":21,"url":"https://hrmos.co/pages/enito/jobs?category=1824376236688437250","alt_text":"累計1000万人超ユーザー、社会課題解決サービスがFlutter全面リプレイス。開発者体験を作り上げていくフェーズでエンジニアを募集！","image_name":"0698a998-3c0a-43ac-bbfe-abfbe2310e68.webp"},{"id":22,"url":"https://layerx.co.jp/jobs","alt_text":"株式会社LayerXは、エンジニアを採用中です！","image_name":"c2acc453-9fe9-47cf-b8a9-98f87a02494c.webp"},{"id":25,"url":"https://engineer-recruit.enechange.co.jp/","alt_text":"Flutterエンジニア積極採用中です（https://engineer-recruit.enechange.co.jp/）","image_name":"9b0b0760-24c5-489c-9ed1-66594b3e3d7e.webp"},{"id":26,"url":"https://jpn.pioneer/ja/corp/recruit/career/","alt_text":"Pioneer Corporation","image_name":"d8511aad-221d-4954-8014-9f15582497bf.webp"},{"id":3,"url":"https://tech.studyplus.co.jp/recruit","alt_text":"スタディプラス株式会社はカジュアル面談を受付中です","image_name":"1edb6f3c-db3f-4e47-9e55-013c18da146a.webp"},{"id":1,"url":"https://herp.careers/v1/diverse/CoUDpvRq6blb","alt_text":"diverse-recruit","image_name":"40eac7d4-70a8-4315-b481-a4374e05e478.webp"},{"id":13,"url":"https://www.wantedly.com/projects/1287104","alt_text":"人・空間・社会をつなぐEV充電サービス","image_name":"fd4aedc5-8cc6-45f1-9260-0523d8a1fc01.webp"},{"id":14,"url":"https://recruit.linc-well.com/engineer","alt_text":"株式会社Linc'well: 最高の医療体験を作りたいFlutterエンジニア募集","image_name":"2d67bee5-f0a0-4acb-9311-d37cc56792c5.webp"},{"id":12,"url":"https://genda.jp/careers/","alt_text":"株式会社GENDAの採用情報","image_name":"ccc7765b-b4bd-42aa-ac95-482ca7302fcb.webp"},{"id":24,"url":"https://10q89s.jp/","alt_text":"東急(株) URBAN HACKS","image_name":"fb3f471f-9ba2-4d50-a3ef-5a544fc9e195.webp"},{"id":15,"url":"https://infcurion.com/careers/","alt_text":"株式会社インフキュリオン 採用情報","image_name":"609e3530-355e-4c0e-bf96-e468e946434b.webp"},{"id":5,"url":"https://hamee.co.jp/recruit/mid-career","alt_text":"クリエイティブ魂に火をつける","image_name":"29cf52c9-c300-4e48-a2ff-030c5b345406.webp"},{"id":11,"url":"https://note.com/medley/n/n32cbd564af5f","alt_text":"「医療ヘルスケアの未来をつくる」日本最大級のサービスを持つメドレーが、Web/アプリエンジニア募集中！","image_name":"75684811-4a97-4f98-8915-ce1336c89993.webp"},{"id":10,"url":"https://mixigroup-recruit.mixi.co.jp/jobs/?cats=engineer","alt_text":"MIXIではコミュニケーションを一緒につくる仲間を募集しています！","image_name":"14f88bf5-0e66-483f-81f9-36055c8f4549.webp"}]''';
