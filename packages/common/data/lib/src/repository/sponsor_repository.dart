import 'dart:convert';

import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/sponsor_with_session.dart';
import 'package:common_data/src/repository/speaker_repository.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'sponsor_repository.freezed.dart';
part 'sponsor_repository.g.dart';

@Riverpod(keepAlive: true)
SponsorRepository sponsorRepository(Ref ref) => SponsorRepository(
      sponsorStorageFileApi: ref.watch(sponsorStorageFileApiProvider),
      speakerRepository: ref.watch(speakerRepositoryProvider),
    );

final class SponsorRepository {
  SponsorRepository({
    required StorageFileApi sponsorStorageFileApi,
    required SpeakerRepository speakerRepository,
  })  : _sponsorStorageFileApi = sponsorStorageFileApi,
        _speakerRepository = speakerRepository;

  final StorageFileApi _sponsorStorageFileApi;
  final SpeakerRepository _speakerRepository;

  @Deprecated('Use fetchSponsorsV2 instead')
  Future<List<Sponsor>> fetchSponsors() async {
    final json = jsonDecode(_jsonContent) as List<dynamic>;
    final result = json
        .map((e) => SponsorTable.fromJson(e as Map<String, dynamic>))
        .toList();
    return result.map(toSponsor).toList();
  }

  /// スポンサーとそれに紐づくセッションを取得する
  /// スポンサーはsort_idの昇順に並び替えられています
  Future<List<SponsorWithSessionV3>> fetchSponsorWithSessionsV3() async {
    final json = jsonDecode(_jsonContentV3) as List<dynamic>;
    final result = json
        .map(
          (e) => SponsorWithSessionV3View.fromJson(e as Map<String, dynamic>),
        )
        .toList();
    return result.map(toSponsorWithSessionV3).toList();
  }

  Sponsor toSponsor(SponsorTable sponsorTable) => Sponsor(
        id: sponsorTable.id,
        name: sponsorTable.name,
        logoUrl: Uri.file(
          'supabase/seed-storage/sponsors/${sponsorTable.logoName}',
        ),
        description: sponsorTable.description,
        url: sponsorTable.url != null ? Uri.tryParse(sponsorTable.url!) : null,
        type: sponsorTable.type,
      );

  SponsorV2 toSponsorV2(SponsorV2Table sponsorV2Table) => SponsorV2(
        id: sponsorV2Table.id,
        name: sponsorV2Table.name,
        logoUrl: Uri.file(
          'supabase/seed-storage/sponsors/${sponsorV2Table.logoName}',
        ),
        description: sponsorV2Table.description,
        url: sponsorV2Table.url != null
            ? Uri.tryParse(sponsorV2Table.url!)
            : null,
        type: sponsorV2Table.type,
      );

  SponsorWithSessionV3 toSponsorWithSessionV3(
    SponsorWithSessionV3View sponsorWithSessionV3View,
  ) =>
      SponsorWithSessionV3(
        id: sponsorWithSessionV3View.id,
        name: sponsorWithSessionV3View.name,
        logoUrl: Uri.file(
          'supabase/seed-storage/sponsors/${sponsorWithSessionV3View.logoName}',
        ),
        sortId: sponsorWithSessionV3View.sortId,
        description: sponsorWithSessionV3View.description,
        url: sponsorWithSessionV3View.url,
        type: sponsorWithSessionV3View.type,
        sessions: sponsorWithSessionV3View.sessions
            .map(_toSponsorWithSessionV3Session)
            .toList(),
      );

  SponsorWithSessionV3Session _toSponsorWithSessionV3Session(
    SponsorWithSessionV3ViewSession sponsorWithSessionV3ViewSession,
  ) =>
      SponsorWithSessionV3Session(
        id: sponsorWithSessionV3ViewSession.id,
        title: sponsorWithSessionV3ViewSession.title,
        description: sponsorWithSessionV3ViewSession.description,
        startsAt: sponsorWithSessionV3ViewSession.startsAt,
        endsAt: sponsorWithSessionV3ViewSession.endsAt,
        isLightningTalk: sponsorWithSessionV3ViewSession.isLightningTalk,
        speakers: sponsorWithSessionV3ViewSession.speakers
            .map(_speakerRepository.toSpeaker)
            .toList(),
        venue: sponsorWithSessionV3ViewSession.venue,
      );
}

/// `public.sponsors`テーブルの要素を表すモデル
@freezed
class SponsorTable with _$SponsorTable {
  const factory SponsorTable({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required String? url,
    required SponsorType type,
  }) = _SponsorTable;

  factory SponsorTable.fromJson(Map<String, dynamic> json) =>
      _$SponsorTableFromJson(json);
}

/// `public.sponsors_v2`ビューの要素を表すモデル
@freezed
class SponsorV2Table with _$SponsorV2Table {
  const factory SponsorV2Table({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required String? url,
    required SponsorTypeV2 type,
  }) = _SponsorV2Table;

  factory SponsorV2Table.fromJson(Map<String, dynamic> json) =>
      _$SponsorV2TableFromJson(json);
}

const _jsonContent =
    r'''[{"id":4,"name":"株式会社リクルート","logo_name":"2f556387-3f38-4635-b4f0-aef28efd5d67.webp","description":"私たちは、個人と企業をつなぎ、より多くの選択肢を提供することで、「まだ、ここにない、出会い。」を実現してきました。いつでもどこでも情報を得られるようになった今だからこそ、より最適な選択肢を提案することで、「まだ、ここにない、出会い。」を、桁違いに速く、驚くほどシンプルに、もっと身近にしていきたいと考えています。","url":"https://www.recruit.co.jp/employment/","type":"gold","sort_id":7},{"id":3,"name":"スタディプラス株式会社","logo_name":"908c645c-d118-4595-8a5c-3ae27f52b9c4.webp","description":"スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています\nStudyplusは学習内容を記録・可視化・共有することによりモチベーション維持、 学習の習慣化を補助します\n私たちは学びに寄り添うプラットフォームを作ります","url":"https://tech.studyplus.co.jp/recruit","type":"bronze","sort_id":15},{"id":2,"name":"株式会社ディー・エヌ・エー","logo_name":"e1341f82-460a-466d-8464-cb133417072e.webp","description":"DeNAは、「一人ひとりに　想像を超えるDelightを」のミッションのもと、エンターテインメントと社会課題領域の両軸で事業を展開しています。","url":"https://dena.com","type":"bronze","sort_id":16},{"id":1,"name":"株式会社Diverse","logo_name":"bc0103fb-98c5-4c17-ae9d-e0e2e357ad0f.webp","description":"累計1900万人が利用するマッチングサービス「YYC」を開発しています。YYCのiOSとAndroidはFlutterで開発しており、マッチング機能だけでなくライブ配信機能などもDartで実装しています。興味のある方はカジュアル面談まで！","url":"https://diverse-inc.co.jp/","type":"bronze","sort_id":17},{"id":5,"name":"Hamee株式会社","logo_name":"97c3bfb9-9eae-4227-91d3-c3325d7a76e9.webp","description":"私たちHameeの「Mission」は『By your side, 人を彩るモノづくりと脱炭素の両立』です。\nこれからは地球にも寄り添いながら、よりいろどりあふれる世界を目指して、相棒となるプロダクトやサービスを生み出し続けます。","url":"https://hamee.co.jp/recruit/love-odawara","type":"bronze","sort_id":24},{"id":8,"name":"株式会社ゆめみ","logo_name":"35b0d521-e0c6-40a7-947c-f72e9ac404ff.webp","description":"6000万人のみんな知ってるあのサービスも、ゆめみが一緒に作ってます。大手企業や急成長スタートアップと共創型でWeb/スマホのサービス作りや内製化支援を行っています。【エンジニアが最も成長できる会社No.1】を目標にしたアジャイル組織として先端を走るエンジニア集団です。","url":"https://www.yumemi.co.jp/","type":"platinum","sort_id":1},{"id":18,"name":"株式会社出前館","logo_name":"2a4cbb69-3500-475a-bfc2-980782f619bb.webp","description":"出前館はクイックコマースサービスとして領域を拡大し、当社のコーポレートミッション「テクノロジーで時間価値を高める」に基づき、利用いただいた皆さまに対して“時間価値の最大化“を実現していきたいと考えています。\n地域活性化とともに、少子高齢化や買い物難民の増加をはじめとした地域や社会課題の解決に向き合い、社会にとって不可欠なライフインフラとして日本経済の発展に貢献できるサービスを目指して挑戦を続けています。","url":"https://recruit.demae-can.co.jp/","type":"platinum","sort_id":2},{"id":16,"name":"RevenueCat","logo_name":"0458e1bc-5ed3-4d9c-9248-e28e3eba2d41.webp","description":"RevenueCatは、サブスクアプリの収益化を支援する包括的なプラットフォームです。企業はRevenueCatを利用して、アプリ内課金の管理、サブスクリプションの追跡、収益分析を一元化できます。シームレスな統合と強力な分析ツールを提供することで、収益の最大化をサポートし、継続的な成長を促進します。Notion、Photoroom、ZOZOなど3万2千を超えるアプリで採用され、サブスクビジネス成功に必要な柔軟なソリューションを提供しています。","url":"https://www.revenuecat.com/jp/","type":"platinum","sort_id":3},{"id":19,"name":"Codemagic","logo_name":"77bea69d-5a57-426d-922a-c9e85155eb84.webp","description":"Flutter developers use Codemagic CI/CD since Flutter Live in 2018 and they love it!\nFlutter developers use Codemagic to automate their release pipeline to the app stores and now Codemagic has M2 Mac Minis available on free tier!","url":"https://codemagic.io/start/?utm_source=events&utm_medium=Flutter_Kaigi","type":"platinum","sort_id":4},{"id":20,"name":"チームラボ株式会社","logo_name":"dc3c5be6-a166-4ef0-ac82-ba7d18120ad1.webp","description":"最新のテクノロジーを活用したソリューション、大規模なシステム開発や、プロダクト、デジタルコンテンツの制作、都市計画や建築空間設計などを行う。\nアーティスト、プログラマ、エンジニア、デザイナー、CGアニメーター、数学者、建築家など、デジタル社会の様々な分野のスペシャリスト総勢1000名から構成されているウルトラテクノロジスト集団で、アート、サイエンス、テクノロジー、クリエイティビティの境界を越えて、集団的創造をコンセプトに活動している。","url":"https://www.team-lab.com/","type":"gold","sort_id":5},{"id":7,"name":"株式会社ハイヤールー","logo_name":"6cb7afa5-74e0-4a4b-b94e-1ff06825097c.webp","description":"HireRoo（ハイヤールー） は、エンジニア採用を効率化するコーディンス試験サービスです。\n幅広い設問が豊富に揃い、職能やレイヤー、測りたいスキルに合わせて最適な試験を作ることができます。\nさらに英語対応もしており、海外採用にも利用可能です。\n詳しくはこちらをご覧ください！\nhttps://hireroo.io/","url":"https://hireroo.io/","type":"gold","sort_id":6},{"id":17,"name":"株式会社ビットキー","logo_name":"42723fb3-273a-413c-893f-89bb9c99eea5.webp","description":"ビットキーは、独自開発のデジタルコネクトプラットフォームを通して、人と「暮らし」や「仕事」の間にある分断を解消するアプリ/SaaSを開発しています。 あらゆるサービスやモノを柔軟につなげることで、体験のアップデートを進めています。","url":"https://bitkey.co.jp/","type":"gold","sort_id":8},{"id":9,"name":"株式会社YOUTRUST","logo_name":"5524fd15-566f-4b4b-9a4b-f12f7a387d00.webp","description":"「日本のモメンタムを上げる 偉大な会社を創る」をビジョンに掲げ、次世代のキャリア市場・キャリア形成の文化を創るため、キャリアSNS「YOUTRUST」や、法人向けHR Tech Saasを開発しています。\n「YOUTRUST」のiOS/AndroidアプリはFlutterで開発されています。\nFlutterの勉強会の主催も行っており、今後もFlutterコミュニティへの貢献に努めてまいります","url":"https://youtrust.co.jp/","type":"gold","sort_id":9},{"id":21,"name":"株式会社Omiai","logo_name":"02ad860c-e534-44ad-80ad-8395e5304b9f.webp","description":"Omiaiは、累計1000万ユーザーが利用するプロダクトであり、「結婚を見据えた真面目な出会い」をコンセプトに30代のユーザーを中心に利用されています。\n\n社会影響としては、年間約6万人以上がOmiaiで出会い、その後多数がご結婚され、結婚数や少子化対策にも貢献している状況です。行政との提携も複数あります。\n\nエンジニアリングにおいては、新機能開発、新技術導入や改善を常時走らせており、チャレンジも多いです。チャレンジが多いからこそ、開発に集中しやすい環境を大切にしています。","url":"https://enito.co.jp/","type":"gold","sort_id":10},{"id":6,"name":"株式会社サイバーエージェント","logo_name":"c832ede4-9c96-4d3f-9a5e-ab2a66497280.webp","description":"サイバーエージェントはインターネットを軸に、メディア事業、インターネット広告事業、ゲーム事業と主に3つの事業を展開しています。当社が展開する競輪業界売上No.1（※）のインターネット競輪投票サービス「WINTICKET」は、Flutterで開発しております。\n※2023年10月～12月の勝者投票券売上実績。（自社調べ）","url":"https://www.cyberagent.co.jp/","type":"gold","sort_id":11},{"id":22,"name":"株式会社LayerX","logo_name":"515688d1-9863-4e23-a498-2a3d2d66b96a.webp","description":"LayerXは、「すべての経済活動を、デジタル化する。」をミッションに掲げるスタートアップです。\n法人支出管理サービス「バクラク」や三井物産らとの合弁によるFintech事業、AI・LLM事業などを展開。","url":"https://layerx.co.jp","type":"silver","sort_id":12},{"id":25,"name":"ENECHANGE株式会社","logo_name":"9a91510b-08c9-41d4-bb11-f2a19d58a425.webp","description":"ENECHANGE株式会社は「エネルギー革命」を技術革新により推進し、より良い世界を創出することをミッションとするエネルギーベンチャー企業です。\nモバイルアプリ開発にFlutterを使っています。本イベントに協賛させていただき光栄です！","url":"https://engineer-recruit.enechange.co.jp/","type":"silver","sort_id":13},{"id":26,"name":"Pioneer株式会社","logo_name":"2df416d3-584a-4493-8595-0d5a52d8f174.webp","description":"パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。\n現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます","url":"https://jpn.pioneer/ja/","type":"silver","sort_id":14},{"id":13,"name":"株式会社プラゴ","logo_name":"cfa6da7f-bf7b-4767-976d-3e41a1678759.webp","description":"「続けたくなる未来を創る」をパーパスに、\"充電習慣・充電体験\"をデザインするEV充電ビジネスを展開。\n全国の充電ステーションの検索、空き情報確認、予約、決済をシームレスにつなぐ、EVユーザーアプリ「Myプラゴ」をFlutterで開発してます！","url":"https://plugo.co.jp/","type":"bronze","sort_id":18},{"id":14,"name":"株式会社Linc’well","logo_name":"8bbbbbf5-a458-4081-a041-d888a800174f.webp","description":"Linc'wellは「テクノロジーを通じて、医療を一歩前へ」をミッションに掲げ、医療を効率化し患者の医療体験と医療の質の向上を目指した事業展開を行っています。2023年リリースのFlutterアプリ「クリフォア」を開発する仲間を募集中です！","url":"https://recruit.linc-well.com/","type":"bronze","sort_id":19},{"id":12,"name":"株式会社GENDA","logo_name":"f3a49eb1-2662-4264-862e-a902fd17d7ee.webp","description":"GENDAは、「世界中の人々の人生をより楽しく」をAspirationに掲げ、世の中に流通する「楽しさの総量」を増やすことを目指すエンタメ企業です。全国で「GiGO」などのアミューズメント施設を展開するなど、幅広い事業を行っています。","url":"https://genda.jp/","type":"bronze","sort_id":20},{"id":24,"name":"東急株式会社","logo_name":"7412f8b3-ec67-4298-a272-126f55762ae6.webp","description":"東急URBAN HACKSは「街づくりのDX」を実現するための内製開発チームです。東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？","url":"https://10q89s.jp/","type":"bronze","sort_id":21},{"id":15,"name":"株式会社インフキュリオン","logo_name":"6d78a8fc-51d3-4acc-ad68-c8352be446e2.webp","description":"インフキュリオンは「決済から、きのうの不可能を可能にする。」をミッションに、社会に新たな価値を生み出し、変革する事業創造イネーブラーです。\n目指すのは、すべての企業がFintech化していく未来。あらゆる企業がサービスに金融機能を組み込めるよう、『Wallet Station』や『Xard』などの自社プラットフォームを提供しています。","url":"https://infcurion.com/","type":"bronze","sort_id":22},{"id":23,"name":"株式会社ギークニア","logo_name":"2bb85cc7-64ec-43dc-a75b-9d9d685e2595.webp","description":"「ギークの楽園をつくる」ことをミッションにIT専門職の皆さんのなめらかで愉快なキャリアを支援しています。カウンセラーは全員、開発エンジニアの経験がありますので、こだわりたい技術スキル、キャリアなど専門職ならではのお悩みをご相談いただけます。","url":"https://geekneer.com/","type":"bronze","sort_id":23},{"id":11,"name":"株式会社メドレー","logo_name":"1b973626-11e4-4784-8e01-ebc6268c8bb6.webp","description":"「医療ヘルスケアの未来をつくる」というミッションのもと、医療ヘルスケア分野の課題解決を目指すメドレー。人材採用システム「ジョブメドレー」やクラウド診療支援システム「CLINICS」などを中心に複数のプロダクトを展開しています。","url":"https://www.medley.jp/","type":"bronze","sort_id":25},{"id":10,"name":"株式会社MIXI","logo_name":"05353993-22b1-42af-a6e7-764b398db1aa.webp","description":"MIXIは「豊かなコミュニケーションを広げ、世界を幸せな驚きで包む。」というパーパスのもと、主にスポーツ、ライフスタイル、デジタルエンターテインメントの3つの領域で事業を推進し、友人や家族と一緒に楽しむコミュニケーションサービスを提供しています。","url":"https://mixi.co.jp/","type":"bronze","sort_id":26},{"id":29,"name":"Flutter","logo_name":"9a86a7c7-991e-4ba4-b481-b14e7f15237e.webp","description":"Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications. Transform your app development process to launch faster with less resources by building, testing, and deploying from a single codebase.","url":"https://flutter.dev/","type":"platinum","sort_id":27}]''';

const _jsonContentV3 =
    r'''[{"id":8,"name":"株式会社ゆめみ","logo_name":"35b0d521-e0c6-40a7-947c-f72e9ac404ff.webp","description":"6000万人のみんな知ってるあのサービスも、ゆめみが一緒に作ってます。大手企業や急成長スタートアップと共創型でWeb/スマホのサービス作りや内製化支援を行っています。【エンジニアが最も成長できる会社No.1】を目標にしたアジャイル組織として先端を走るエンジニア集団です。","url":"https://www.yumemi.co.jp/","type":"platinum","sort_id":1,"sessions":[]},{"id":18,"name":"株式会社出前館","logo_name":"2a4cbb69-3500-475a-bfc2-980782f619bb.webp","description":"出前館はクイックコマースサービスとして領域を拡大し、当社のコーポレートミッション「テクノロジーで時間価値を高める」に基づき、利用いただいた皆さまに対して“時間価値の最大化“を実現していきたいと考えています。\n地域活性化とともに、少子高齢化や買い物難民の増加をはじめとした地域や社会課題の解決に向き合い、社会にとって不可欠なライフインフラとして日本経済の発展に貢献できるサービスを目指して挑戦を続けています。","url":"https://recruit.demae-can.co.jp/","type":"platinum","sort_id":2,"sessions":[{"id":"b57f3efd-b31d-4d57-aaa3-f45f1b17f727","title":"出前館アプリにおけるFlutterアプリ設計とそれを支えるCICD環境の進化","description":"## スポンサー名\n株式会社出前館\n\n## 概要\n本セッションでは、出前館アプリにおけるFlutterアプリ設計、そしてそれらを支えるCICD環境について述べます。\n\nセッション前半では出前館アプリのアプリ設計についてお話しします。\n出前館アプリのフォルダ構成やAsset Management、そしてState Managementについてお話しします。\n現在出前館では、提供するすべてのアプリでFlutterを採用しています。それら経験をご紹介しつつ、現在の出前館アプリのアプリ設計についてご紹介いたします。\n\nセッション後半では出前館アプリを支えるCICD環境について述べます。\nアプリ開発においてCICD環境はなくてはならない存在です。出前館アプリでは、これまでCICD環境(bitrise)の導入、React NativeからFlutterへの移行に伴う改修、そして新たなCICD環境(TeamCity)への移行に取り組んできました。\n4年間という短い期間にこれだけの取り組みをしてきたチームは少ないでしょう。セッション後半では、この苦労と葛藤についてご紹介します。\n\n## 想定視聴者\n・Flutterを用いてアプリ開発を行うエンジニア\n・CICD環境の構築やその運用に取り組むエンジニア","starts_at":"2024-11-22T02:00:00+00:00","ends_at":"2024-11-22T02:40:00+00:00","is_lightning_talk":false,"speakers":[{"id":"cefa50ab-4d04-4cf1-a3f9-9ee50e2b630b","name":"廣部貴徳","avatar_name":"cefa50ab-4d04-4cf1-a3f9-9ee50e2b630b.webp","x_id":"taka1068"}],"venue":{"id":"f6ee9501-0698-44ea-ad21-eb051ee94a8e","name":"B Dash"}}]},{"id":16,"name":"RevenueCat","logo_name":"0458e1bc-5ed3-4d9c-9248-e28e3eba2d41.webp","description":"RevenueCatは、サブスクアプリの収益化を支援する包括的なプラットフォームです。企業はRevenueCatを利用して、アプリ内課金の管理、サブスクリプションの追跡、収益分析を一元化できます。シームレスな統合と強力な分析ツールを提供することで、収益の最大化をサポートし、継続的な成長を促進します。Notion、Photoroom、ZOZOなど3万2千を超えるアプリで採用され、サブスクビジネス成功に必要な柔軟なソリューションを提供しています。","url":"https://www.revenuecat.com/jp/","type":"platinum","sort_id":3,"sessions":[{"id":"3bbe9e9a-d41f-4c4d-994c-0064cd30fd94","title":"Monetizing Your Indie Flutter App to $1k in Monthly Revenue and Beyond","description":"## 概要\nOnly ~17% of apps reach $1k in monthly revenue. Learn best practices on crossing $1k MRR and beyond from personal experience building two profitable apps and advice from other successful app founders\n\n## 想定視聴者\nApp developers/founders","starts_at":"2024-11-22T05:30:00+00:00","ends_at":"2024-11-22T06:10:00+00:00","is_lightning_talk":false,"speakers":[{"id":"e34f0e48-bc98-4621-9fd8-97fab8e4f112","name":"Jeffrey Bunn","avatar_name":"e34f0e48-bc98-4621-9fd8-97fab8e4f112.webp","x_id":"jeffreybunn"}],"venue":{"id":"d6432c3c-3ef9-44ef-aa69-78f5e4dd867d","name":"A Dash"}}]},{"id":19,"name":"Codemagic","logo_name":"77bea69d-5a57-426d-922a-c9e85155eb84.webp","description":"Flutter developers use Codemagic CI/CD since Flutter Live in 2018 and they love it!\nFlutter developers use Codemagic to automate their release pipeline to the app stores and now Codemagic has M2 Mac Minis available on free tier!","url":"https://codemagic.io/start/?utm_source=events&utm_medium=Flutter_Kaigi","type":"platinum","sort_id":4,"sessions":[]},{"id":20,"name":"チームラボ株式会社","logo_name":"dc3c5be6-a166-4ef0-ac82-ba7d18120ad1.webp","description":"最新のテクノロジーを活用したソリューション、大規模なシステム開発や、プロダクト、デジタルコンテンツの制作、都市計画や建築空間設計などを行う。\nアーティスト、プログラマ、エンジニア、デザイナー、CGアニメーター、数学者、建築家など、デジタル社会の様々な分野のスペシャリスト総勢1000名から構成されているウルトラテクノロジスト集団で、アート、サイエンス、テクノロジー、クリエイティビティの境界を越えて、集団的創造をコンセプトに活動している。","url":"https://www.team-lab.com/","type":"gold","sort_id":5,"sessions":[{"id":"71216c8c-fbb0-45e1-a72d-e544b6b712bd","title":"ステートマシンで実現する高品質なFlutterアプリ開発","description":"## 概要\nAPIとの通信は完了したのにローディング表示が消えない、データが存在しない場合の実装が漏れていて表示が崩れる…そんな問題に直面したことはありませんか？\nこのようなバグを減らし、優れたアプリを開発するための状態管理の手法は常に重要な課題とされてきました。\n\nこのセッションでは、チームラボが高品質なアプリ開発を実現するために採用しているステートマシンを用いた状態管理手法を詳しく解説します。\n\nステートマシンについての基本概念から始まり、簡単な画面での例を交え、現在Flutterにおいて主流の状態管理手法であるRiverpodとの比較も行います。 その後、複雑な画面でのステートマシン利用例や、弊社が開発した状態管理パッケージの紹介、ステートマシンを効率的に利用するためのアーキテクチャ、ステートマシンを採用することによって得られる、コーディング以外の利点についても説明します。\n\n## 想定視聴者\n* Flutterにおける状態管理に関心のある方\n* setStateやHooks,Riverpodでの状態管理に課題を感じている方","starts_at":"2024-11-21T04:50:00+00:00","ends_at":"2024-11-21T05:30:00+00:00","is_lightning_talk":false,"speakers":[{"id":"a87ad2ac-dc69-44fb-861d-ef57f3a3f41b","name":"そた","avatar_name":"a87ad2ac-dc69-44fb-861d-ef57f3a3f41b.webp","x_id":"_sotaatos"}],"venue":{"id":"f6ee9501-0698-44ea-ad21-eb051ee94a8e","name":"B Dash"}}]},{"id":7,"name":"株式会社ハイヤールー","logo_name":"6cb7afa5-74e0-4a4b-b94e-1ff06825097c.webp","description":"HireRoo（ハイヤールー） は、エンジニア採用を効率化するコーディンス試験サービスです。\n幅広い設問が豊富に揃い、職能やレイヤー、測りたいスキルに合わせて最適な試験を作ることができます。\nさらに英語対応もしており、海外採用にも利用可能です。\n詳しくはこちらをご覧ください！\nhttps://hireroo.io/","url":"https://hireroo.io/","type":"gold","sort_id":6,"sessions":[]},{"id":4,"name":"株式会社リクルート","logo_name":"2f556387-3f38-4635-b4f0-aef28efd5d67.webp","description":"私たちは、個人と企業をつなぎ、より多くの選択肢を提供することで、「まだ、ここにない、出会い。」を実現してきました。いつでもどこでも情報を得られるようになった今だからこそ、より最適な選択肢を提案することで、「まだ、ここにない、出会い。」を、桁違いに速く、驚くほどシンプルに、もっと身近にしていきたいと考えています。","url":"https://www.recruit.co.jp/employment/","type":"gold","sort_id":7,"sessions":[{"id":"f6931b4e-30db-4a4e-9582-7a54c135b740","title":"Flutterによる効率的なAndroid・iOS・Webアプリケーション開発の事例 - スタディサプリ for SCHOOL","description":"## 概要\n株式会社リクルートが提供するスタディサプリ for SCHOOLは、生徒の進路選択を支援するアプリケーションです。\n勉強したい学問や興味のある仕事を発見する、学校の資料請求やオープンキャンパスを予約するといった、進路を考える際に必要となる機能を提供しています。利用できる環境は、Webアプリケーション、AndroidとiOSのモバイルアプリケーションです。\n\n2024年現在、開発フレームワークとしてFlutterを採用しています。\n初回リリースとなる2020年ではAndroidとiOSともにNative SDKによる開発でしたが、2023年にFlutterで作られたアプリケーションに更新しました。また、2024年にはVue.jsで作られたWebアプリケーションをFlutter Webで更新します。\n\nこのセッションはスタディサプリ for SCHOOLをFlutterでリプレースした事例において、Flutterにより開発効率がどのように向上したかを紹介します。そして、AndroidとiOSだけでなくWebもFlutterで開発することとした狙いと、その過程で得られた教訓を共有します。\n\n## 想定視聴者\n- Flutterによる効率的な開発に関心のある方\n- Flutter Webに関心のある方","starts_at":"2024-11-21T05:50:00+00:00","ends_at":"2024-11-21T06:30:00+00:00","is_lightning_talk":false,"speakers":[{"id":"0116ff6a-5171-44d3-9733-f047f2f17930","name":"若宮浩司","avatar_name":"0116ff6a-5171-44d3-9733-f047f2f17930.webp","x_id":"D_R_1009"}],"venue":{"id":"d6432c3c-3ef9-44ef-aa69-78f5e4dd867d","name":"A Dash"}}]},{"id":17,"name":"株式会社ビットキー","logo_name":"42723fb3-273a-413c-893f-89bb9c99eea5.webp","description":"ビットキーは、独自開発のデジタルコネクトプラットフォームを通して、人と「暮らし」や「仕事」の間にある分断を解消するアプリ/SaaSを開発しています。 あらゆるサービスやモノを柔軟につなげることで、体験のアップデートを進めています。","url":"https://bitkey.co.jp/","type":"gold","sort_id":8,"sessions":[{"id":"a1ba9bfd-87c8-47b2-b5af-a50e0c64c300","title":"キャンセルします！処理を","description":"## スポンサー名\n\n株式会社ビットキー\n\n## 概要\n\n処理をキャンセルするというパターンを取り入れると、非同期処理の内容の整理に役立つことがあります。\n時間がかかる処理をタイムアウトさせたり、ユーザーの希望に応じて止めたり、あるいは複数のうち最も早い応答だけを採用するような処理に効果的です。\n結果として不要な処理や通信が抑えられ、あなたのアプリの動きのレベルを一段引き上げることにもつながります。\n\n本セッションでは、 協調的なキャンセルの考え方を `dart:async` の `Timer` を例に紹介したうえで、\nSwift Concurrency や Kotlin Coroutine のキャンセルを、 Method Channel で Flutter の世界に持ち込む方法を解説します。\nさらに、 Riverpod の `.autoDispose` と合わせて、キャンセルをアプリに組み込む方法についてもお話しします。\n\n## 想定視聴者\n\n* タイムアウトの実装方法にお悩みの方\n* ユーザーの「やっぱりやめたい」という思いに応えたい方\n* Flutter から Swift Concurrency や Kotlin Coroutine を扱いたい方","starts_at":"2024-11-21T02:00:00+00:00","ends_at":"2024-11-21T02:40:00+00:00","is_lightning_talk":false,"speakers":[{"id":"5d252897-2c14-4232-b51d-8f9bfa47fae3","name":"Masatoshi Tsushima","avatar_name":"5d252897-2c14-4232-b51d-8f9bfa47fae3.webp","x_id":"utisam"}],"venue":{"id":"d6432c3c-3ef9-44ef-aa69-78f5e4dd867d","name":"A Dash"}}]},{"id":9,"name":"株式会社YOUTRUST","logo_name":"5524fd15-566f-4b4b-9a4b-f12f7a387d00.webp","description":"「日本のモメンタムを上げる 偉大な会社を創る」をビジョンに掲げ、次世代のキャリア市場・キャリア形成の文化を創るため、キャリアSNS「YOUTRUST」や、法人向けHR Tech Saasを開発しています。\n「YOUTRUST」のiOS/AndroidアプリはFlutterで開発されています。\nFlutterの勉強会の主催も行っており、今後もFlutterコミュニティへの貢献に努めてまいります","url":"https://youtrust.co.jp/","type":"gold","sort_id":9,"sessions":[]},{"id":21,"name":"株式会社Omiai","logo_name":"02ad860c-e534-44ad-80ad-8395e5304b9f.webp","description":"Omiaiは、累計1000万ユーザーが利用するプロダクトであり、「結婚を見据えた真面目な出会い」をコンセプトに30代のユーザーを中心に利用されています。\n\n社会影響としては、年間約6万人以上がOmiaiで出会い、その後多数がご結婚され、結婚数や少子化対策にも貢献している状況です。行政との提携も複数あります。\n\nエンジニアリングにおいては、新機能開発、新技術導入や改善を常時走らせており、チャレンジも多いです。チャレンジが多いからこそ、開発に集中しやすい環境を大切にしています。","url":"https://enito.co.jp/","type":"gold","sort_id":10,"sessions":[{"id":"369e19d9-1f27-40e6-b294-64c6ca9bfcae","title":"マッチングアプリ『Omiai 』のFlutterへのリプレイスの挑戦","description":"## スポンサー名\n株式会社Omiai\n\n## 概要\n株式会社Omiai では、長年運営してきたマッチングアプリ『Omiai 』をFlutterでリプレイスする取り組みを進めています。\n\niOS・Android 両プラットフォームの古いコードベースが抱える技術的負債や仕様の差異などの課題解決を目指し、ゼロからのFlutterプロジェクト始動を機に、様々な改善や工夫に挑戦しています。\n\n本セッションでは、以下の取り組みを中心に、OmiaiのFlutterリプレイスについて紹介します。\n\n• マルチパッケージ構成を活用し、依存の向きを厳密に管理したアーキテクチャ\n• 業務ロジック層およびそれより抽象的な層のユニットテストをカバレッジ100%で記述する運用\n• public_member_api_docsの全面適用など、採用しているlintルールやcustom_lint\n• Flutter経験のないエンジニアができるだけスムーズに開発に参画できるキャッチアップ方法\n• マージとデプロイのタイミングを分離したブランチ運用とリリースフロー\n• Add-to-Appによる段階的なリプレイス\n\n## 想定視聴者\n• Flutter プロジェクトをこれから立ち上げる方\n• 既存プロジェクトの開発生産性や保守性に課題を感じている方\n• アーキテクチャ設計、テスト戦略、チーム育成などの知見を得たい方","starts_at":"2024-11-22T07:30:00+00:00","ends_at":"2024-11-22T08:10:00+00:00","is_lightning_talk":false,"speakers":[{"id":"e63e4871-1e52-41f5-845c-335a0ec77e66","name":"Kosuke Saigusa","avatar_name":"e63e4871-1e52-41f5-845c-335a0ec77e66.webp","x_id":"KosukeSaigusa"}],"venue":{"id":"f6ee9501-0698-44ea-ad21-eb051ee94a8e","name":"B Dash"}}]},{"id":6,"name":"株式会社サイバーエージェント","logo_name":"c832ede4-9c96-4d3f-9a5e-ab2a66497280.webp","description":"サイバーエージェントはインターネットを軸に、メディア事業、インターネット広告事業、ゲーム事業と主に3つの事業を展開しています。当社が展開する競輪業界売上No.1（※）のインターネット競輪投票サービス「WINTICKET」は、Flutterで開発しております。\n※2023年10月～12月の勝者投票券売上実績。（自社調べ）","url":"https://www.cyberagent.co.jp/","type":"gold","sort_id":11,"sessions":[]},{"id":22,"name":"株式会社LayerX","logo_name":"515688d1-9863-4e23-a498-2a3d2d66b96a.webp","description":"LayerXは、「すべての経済活動を、デジタル化する。」をミッションに掲げるスタートアップです。\n法人支出管理サービス「バクラク」や三井物産らとの合弁によるFintech事業、AI・LLM事業などを展開。","url":"https://layerx.co.jp","type":"silver","sort_id":12,"sessions":[]},{"id":25,"name":"ENECHANGE株式会社","logo_name":"9a91510b-08c9-41d4-bb11-f2a19d58a425.webp","description":"ENECHANGE株式会社は「エネルギー革命」を技術革新により推進し、より良い世界を創出することをミッションとするエネルギーベンチャー企業です。\nモバイルアプリ開発にFlutterを使っています。本イベントに協賛させていただき光栄です！","url":"https://engineer-recruit.enechange.co.jp/","type":"silver","sort_id":13,"sessions":[]},{"id":26,"name":"Pioneer株式会社","logo_name":"2df416d3-584a-4493-8595-0d5a52d8f174.webp","description":"パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。\n現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます","url":"https://jpn.pioneer/ja/","type":"silver","sort_id":14,"sessions":[]},{"id":3,"name":"スタディプラス株式会社","logo_name":"908c645c-d118-4595-8a5c-3ae27f52b9c4.webp","description":"スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています\nStudyplusは学習内容を記録・可視化・共有することによりモチベーション維持、 学習の習慣化を補助します\n私たちは学びに寄り添うプラットフォームを作ります","url":"https://tech.studyplus.co.jp/recruit","type":"bronze","sort_id":15,"sessions":[]},{"id":2,"name":"株式会社ディー・エヌ・エー","logo_name":"e1341f82-460a-466d-8464-cb133417072e.webp","description":"DeNAは、「一人ひとりに　想像を超えるDelightを」のミッションのもと、エンターテインメントと社会課題領域の両軸で事業を展開しています。","url":"https://dena.com","type":"bronze","sort_id":16,"sessions":[]},{"id":1,"name":"株式会社Diverse","logo_name":"bc0103fb-98c5-4c17-ae9d-e0e2e357ad0f.webp","description":"累計1900万人が利用するマッチングサービス「YYC」を開発しています。YYCのiOSとAndroidはFlutterで開発しており、マッチング機能だけでなくライブ配信機能などもDartで実装しています。興味のある方はカジュアル面談まで！","url":"https://diverse-inc.co.jp/","type":"bronze","sort_id":17,"sessions":[]},{"id":13,"name":"株式会社プラゴ","logo_name":"cfa6da7f-bf7b-4767-976d-3e41a1678759.webp","description":"「続けたくなる未来を創る」をパーパスに、\"充電習慣・充電体験\"をデザインするEV充電ビジネスを展開。\n全国の充電ステーションの検索、空き情報確認、予約、決済をシームレスにつなぐ、EVユーザーアプリ「Myプラゴ」をFlutterで開発してます！","url":"https://plugo.co.jp/","type":"bronze","sort_id":18,"sessions":[]},{"id":14,"name":"株式会社Linc’well","logo_name":"8bbbbbf5-a458-4081-a041-d888a800174f.webp","description":"Linc'wellは「テクノロジーを通じて、医療を一歩前へ」をミッションに掲げ、医療を効率化し患者の医療体験と医療の質の向上を目指した事業展開を行っています。2023年リリースのFlutterアプリ「クリフォア」を開発する仲間を募集中です！","url":"https://recruit.linc-well.com/","type":"bronze","sort_id":19,"sessions":[]},{"id":12,"name":"株式会社GENDA","logo_name":"f3a49eb1-2662-4264-862e-a902fd17d7ee.webp","description":"GENDAは、「世界中の人々の人生をより楽しく」をAspirationに掲げ、世の中に流通する「楽しさの総量」を増やすことを目指すエンタメ企業です。全国で「GiGO」などのアミューズメント施設を展開するなど、幅広い事業を行っています。","url":"https://genda.jp/","type":"bronze","sort_id":20,"sessions":[]},{"id":24,"name":"東急株式会社","logo_name":"7412f8b3-ec67-4298-a272-126f55762ae6.webp","description":"東急URBAN HACKSは「街づくりのDX」を実現するための内製開発チームです。東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？","url":"https://10q89s.jp/","type":"bronze","sort_id":21,"sessions":[]},{"id":15,"name":"株式会社インフキュリオン","logo_name":"6d78a8fc-51d3-4acc-ad68-c8352be446e2.webp","description":"インフキュリオンは「決済から、きのうの不可能を可能にする。」をミッションに、社会に新たな価値を生み出し、変革する事業創造イネーブラーです。\n目指すのは、すべての企業がFintech化していく未来。あらゆる企業がサービスに金融機能を組み込めるよう、『Wallet Station』や『Xard』などの自社プラットフォームを提供しています。","url":"https://infcurion.com/","type":"bronze","sort_id":22,"sessions":[]},{"id":23,"name":"株式会社ギークニア","logo_name":"2bb85cc7-64ec-43dc-a75b-9d9d685e2595.webp","description":"「ギークの楽園をつくる」ことをミッションにIT専門職の皆さんのなめらかで愉快なキャリアを支援しています。カウンセラーは全員、開発エンジニアの経験がありますので、こだわりたい技術スキル、キャリアなど専門職ならではのお悩みをご相談いただけます。","url":"https://geekneer.com/","type":"bronze","sort_id":23,"sessions":[]},{"id":5,"name":"Hamee株式会社","logo_name":"97c3bfb9-9eae-4227-91d3-c3325d7a76e9.webp","description":"私たちHameeの「Mission」は『By your side, 人を彩るモノづくりと脱炭素の両立』です。\nこれからは地球にも寄り添いながら、よりいろどりあふれる世界を目指して、相棒となるプロダクトやサービスを生み出し続けます。","url":"https://hamee.co.jp/recruit/love-odawara","type":"bronze","sort_id":24,"sessions":[]},{"id":11,"name":"株式会社メドレー","logo_name":"1b973626-11e4-4784-8e01-ebc6268c8bb6.webp","description":"「医療ヘルスケアの未来をつくる」というミッションのもと、医療ヘルスケア分野の課題解決を目指すメドレー。人材採用システム「ジョブメドレー」やクラウド診療支援システム「CLINICS」などを中心に複数のプロダクトを展開しています。","url":"https://www.medley.jp/","type":"bronze","sort_id":25,"sessions":[]},{"id":10,"name":"株式会社MIXI","logo_name":"05353993-22b1-42af-a6e7-764b398db1aa.webp","description":"MIXIは「豊かなコミュニケーションを広げ、世界を幸せな驚きで包む。」というパーパスのもと、主にスポーツ、ライフスタイル、デジタルエンターテインメントの3つの領域で事業を推進し、友人や家族と一緒に楽しむコミュニケーションサービスを提供しています。","url":"https://mixi.co.jp/","type":"bronze","sort_id":26,"sessions":[]},{"id":29,"name":"Flutter","logo_name":"9a86a7c7-991e-4ba4-b481-b14e7f15237e.webp","description":"Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications. Transform your app development process to launch faster with less resources by building, testing, and deploying from a single codebase.","url":"https://flutter.dev/","type":"platinum","sort_id":27,"sessions":[]},{"id":27,"name":"DroidKaigi Association","logo_name":"1cbc8ff6-882d-4df5-8fab-e3f2ff294149.webp","description":"DroidKaigiは主にAndroidを対象にしたカンファレンスです。Flutterのターゲットプラットフォームのひとつでもあり、非常に親しく感じています。\nITコミュニティとして一緒にモバイル業界を盛り上げていきましょう！","url":"https://droidkaigi.jp","type":"community","sort_id":27,"sessions":[]},{"id":28,"name":"ポケトーク株式会社","logo_name":"dd6f30c4-fc43-4ccc-b48d-04991a3482a3.webp","description":"AI翻訳技術の革新で「言葉の壁をなくす」ことをスローガンに掲げているスタートアップ企業です。\n本イベントでは登壇者の公演をAI同時通訳するポケトークカンファレンスというサービスにて、イベント運営をサポートいたします。","url":"https://pocketalk.jp/?utm_source=google&utm_medium=cpc&utm_campaign=lsj_search&gad_source=1&gclid=Cj0KCQjwyL24BhCtARIsALo0fSAzUcKusFvIvUi-tlFGqp1BT4JveSlZHzce5-bVmNH--d33Rvy1WvcaAk-NEALw_wcB","type":"translation","sort_id":28,"sessions":[]}]''';
