-- staffs
INSERT INTO
  staffs (name, icon_name, greeting)
VALUES
  ('いせりゅー', 'iseruuuuu.webp', '今年は広報のリーダをしています🥳'),
  ('asuka', 'a-skua.webp', 'I □ Flutter'),
  ('酒井佑旗(yuki s)', 'yukisakai1225.webp', '第4回も楽しみましょう！'),
  ('尾上 遼太朗', 'YumNumm.webp', ''),
  ('minn', 'kitashio.webp', ''),
  ('blendthink', 'blendthink.webp', '開発担当'),
  ('mkosuke', 'shcahill.webp', 'フロサポ🐬'),
  ('ENDO Takumi', 'ENDOTAKUMI.webp', ''),
  ('たこさん', 'K9i-0.webp', '去年は広報チームリーダーしてました😉'),
  ('heyhey1028', 'heyhey1028.webp', ''),
  ('hiropon', 'hiropeng.webp', ''),
  ('robo', 'cch-robo.webp', '技術とモバイル端末が大好きなエンジニア'),
  ('okaryo', 'okaryo.webp', ''),
  ('katota', 'KTmifune.webp', ''),
  ('Kurogoma4D', 'Kurogoma4D.webp', ''),
  ('なが', 'sinjikoro.webp', ''),
  ('朝日 大樹 (ashdik)', 'daiki1003.webp', 'Flutterを盛り上げていきましょう！'),
  ('koji-1009', 'koji-1009.webp', ''),
  ('Takasugi Kensuke', 'tks-00.webp', 'Flutter は楽しいぞ'),
  ('darallium', 'darallium.webp', ''),
  ('Santa Takahashi', 'santa112358.webp', ''),
  ('Inoue', 'k-inoue-github.webp', 'デザイナー視点でFlutterを広げたい'),
  ('TK', 'TK-Guitar.webp', 'カンファレンススタッフ初挑戦、頑張る！'),
  ('sohichiro', 'sohichiro.webp', ''),
  ('白崎 紀充', 'tucur-prg.webp', '新しい繋がりを探して'),
  ('うめちゃん', 'umechanhika.webp', ''),
  ('shimizu', 'j1522158.webp', ''),
  ('cardseditor', 'cardseditor.webp', ''),
  ('yuta-ike', 'yuta-ike.webp', ''),
  ('萩尾 亮斗', 'akeybako.webp', ''),
  ('kikuchy', 'kikuchy.webp', '楽しいFlutterKaigiにするぞ！'),
  ('haru', 'Haru-Kobayashi073.webp', 'さじ1杯分程、Web開発に携わりました!'),
  ('kuno', 'kno3a87.webp', 'わいわい'),
  ('mafreud', 'mafreud.webp', 'Flutter盛り上げていきましょう！'),
  ('草野 慶人', 'keitokusano.webp', 'FlutterKaigi楽しみっ！'),
  ('そた', 'SoutaTanaka.webp', 'Webサイト頑張りました！');

-- staff_social_networking_services
DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'いせりゅー';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'iseruuuuu'),
        (temp_id, 'x', 'isekiryu'),
        (temp_id, 'medium', 'iseryuuuuu3'),
        (temp_id, 'qiita', 'isekiryu'),
        (temp_id, 'zenn', 'iseki'),
        (temp_id, 'note', 'iseryu');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'asuka';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'a-skua'),
        (temp_id, 'x', 'a_skua');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '酒井佑旗(yuki s)';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'yukisakai1225'),
        (temp_id, 'x', 'yu12k25i');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '尾上 遼太朗';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'YumNumm'),
        (temp_id, 'x', 'YumNumm'),
        (temp_id, 'qiita', 'YumNumm'),
        (temp_id, 'zenn', 'YumNumm');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'minn';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'kitashio'),
        (temp_id, 'x', 'minn_flutter');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'blendthink';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'blendthink'),
        (temp_id, 'x', 'blendthink'),
        (temp_id, 'medium', 'blendthink'),
        (temp_id, 'qiita', 'blendthink'),
        (temp_id, 'zenn', 'blendthink'),
        (temp_id, 'note', 'blendthink');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'mkosuke';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'shcahill'),
        (temp_id, 'x', 'kosuke_mtm'),
        (temp_id, 'qiita', 'mkosuke'),
        (temp_id, 'zenn', 'mkosuke'),
        (temp_id, 'note', 'shcahill');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'ENDO Takumi';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'ENDOTAKUMI'),
        (temp_id, 'x', 'endotakumi_dev'),
        (temp_id, 'medium', 'endo.takumi.info'),
        (temp_id, 'qiita', 'ENDOTAKUMI'),
        (temp_id, 'zenn', 'endotakumi'),
        (temp_id, 'note', 'endo_takumi'),
        (temp_id, 'other', 'https://endotakumi.github.io/');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'たこさん';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'K9i-0'),
        (temp_id, 'x', 'K9i_apps'),
        (temp_id, 'medium', 'K9i'),
        (temp_id, 'qiita', 'K9i-0'),
        (temp_id, 'zenn', 'k9i'),
        (temp_id, 'note', 'k9i'),
        (temp_id, 'other', 'https://k9i.app/');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'heyhey1028';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'heyhey1028'),
        (temp_id, 'x', 'heyhey1028'),
        (temp_id, 'zenn', 'heyhey1028');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'hiropon';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'hiropeng');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'robo';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'cch-robo'),
        (temp_id, 'x', 'cch_robo'),
        (temp_id, 'medium', 'robo_34007');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'okaryo';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'okaryo'),
        (temp_id, 'x', 'okaryoX');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'katota';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'KTmifune'),
        (temp_id, 'x', 'table_house');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'Kurogoma4D';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'Kurogoma4D'),
        (temp_id, 'x', 'Krgm4D'),
        (temp_id, 'zenn', 'kurogoma4d');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'なが';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'sinjikoro'),
        (temp_id, 'x', 'shinnaaaga'),
        (temp_id, 'medium', 'shinnaga.dev');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '朝日 大樹 (ashdik)';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'daiki1003'),
        (temp_id, 'x', 'daiki1003'),
        (temp_id, 'medium', 'ashdik.saxophone'),
        (temp_id, 'qiita', 'ashdik'),
        (temp_id, 'zenn', 'ashdik'),
        (temp_id, 'note', 'ashdik'),
        (temp_id, 'other', 'https://blog.dalt.me');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'koji-1009';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'koji-1009'),
        (temp_id, 'x', 'D_R_1009'),
        (temp_id, 'medium', 'koji-1009'),
        (temp_id, 'zenn', 'koji_1009');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'Takasugi Kensuke';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'tks-00'),
        (temp_id, 'qiita', 'tks_00');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'darallium';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'darallium'),
        (temp_id, 'x', 'Yu_kyu_n');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'Santa Takahashi';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'santa112358'),
        (temp_id, 'x', '3ta0212');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'Inoue';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'k-inoue-github');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'TK';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'TK-Guitar'),
        (temp_id, 'qiita', 'TK-San');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'sohichiro';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'sohichiro'),
        (temp_id, 'x', 'sohichiro');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '白崎 紀充';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'tucur-prg'),
        (temp_id, 'x', 'magnet_0113_eng'),
        (temp_id, 'qiita', 'tucur-prg');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'うめちゃん';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'umechanhika'),
        (temp_id, 'x', 'umechanhika'),
        (temp_id, 'medium', 'umechanhika'),
        (temp_id, 'qiita', 'umechanhika'),
        (temp_id, 'zenn', 'umechanhika'),
        (temp_id, 'note', 'umechanhika'),
        (temp_id, 'other', 'https://umechanhika.notion.site/umechanhika-903ff47c623343c695ba9d4f5292e9b5');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'shimizu';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'j1522158');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'cardseditor';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'cardseditor'),
        (temp_id, 'x', 'cardseditor'),
        (temp_id, 'medium', 'cardseditor'),
        (temp_id, 'qiita', 'cardseditor'),
        (temp_id, 'zenn', 'cardseditor');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'yuta-ike';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'yuta-ike'),
        (temp_id, 'x', 'Selria1'),
        (temp_id, 'medium', 'yuta-ike'),
        (temp_id, 'qiita', 'yuta-ike'),
        (temp_id, 'zenn', 'yuta_ike'),
        (temp_id, 'note', 'yuta_ike');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '萩尾 亮斗';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'akeybako'),
        (temp_id, 'x', 'a_key_bako'),
        (temp_id, 'zenn', 'akeybako');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'kikuchy';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'kikuchy'),
        (temp_id, 'x', 'kikuchy'),
        (temp_id, 'medium', 'kikuchy'),
        (temp_id, 'qiita', 'kikuchy'),
        (temp_id, 'zenn', 'kikuchy');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'haru';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'Haru-Kobayashi073'),
        (temp_id, 'x', 'h_aru073'),
        (temp_id, 'qiita', 'haru_826230'),
        (temp_id, 'zenn', 'haru_073'),
        (temp_id, 'note', 'koba_haru'),
        (temp_id, 'other', 'https://general-epoxy-a08.notion.site/ac045c55f61946e88864847d6cd2cf0f?pvs=4');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'kuno';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'kno3a87'),
        (temp_id, 'x', 'Kunodayo_oboete'),
        (temp_id, 'zenn', 'kuno');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'mafreud';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'mafreud'),
        (temp_id, 'x', 'ma_freud');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '草野 慶人';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'keitokusano'),
        (temp_id, 'x', 'techkeito');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'そた';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'SoutaTanaka'),
        (temp_id, 'x', '_sotaatos'),
        (temp_id, 'qiita', 'SotaAtos');
END $$;

-- sponsors
INSERT INTO
  public.sponsors
VALUES
  (
    1,
    '株式会社Diverse',
    'bc0103fb-98c5-4c17-ae9d-e0e2e357ad0f.webp',
    E'累計1900万人が利用するマッチングサービス「YYC」を開発しています。YYCのiOSとAndroidはFlutterで開発しており、マッチング機能だけでなくライブ配信機能などもDartで実装しています。興味のある方はカジュアル面談まで！',
    'https://diverse-inc.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    2,
    '株式会社ディー・エヌ・エー',
    'e1341f82-460a-466d-8464-cb133417072e.webp',
    E'DeNAは、「一人ひとりに　想像を超えるDelightを」のミッションのもと、エンターテインメントと社会課題領域の両軸で事業を展開しています。',
    'https://dena.com',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    3,
    'スタディプラス株式会社',
    '908c645c-d118-4595-8a5c-3ae27f52b9c4.webp',
    E'スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています\nStudyplusは学習内容を記録・可視化・共有することによりモチベーション維持、 学習の習慣化を補助します\n私たちは学びに寄り添うプラットフォームを作ります',
    'https://tech.studyplus.co.jp/recruit',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    4,
    '株式会社リクルート',
    '2f556387-3f38-4635-b4f0-aef28efd5d67.webp',
    E'私たちは、個人と企業をつなぎ、より多くの選択肢を提供することで、「まだ、ここにない、出会い。」を実現してきました。いつでもどこでも情報を得られるようになった今だからこそ、より最適な選択肢を提案することで、「まだ、ここにない、出会い。」を、桁違いに速く、驚くほどシンプルに、もっと身近にしていきたいと考えています。',
    'https://www.recruit.co.jp/employment/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    5,
    'Hamee株式会社',
    '97c3bfb9-9eae-4227-91d3-c3325d7a76e9.webp',
    E'私たちHameeの「Mission」は『By your side, 人を彩るモノづくりと脱炭素の両立』です。\nこれからは地球にも寄り添いながら、よりいろどりあふれる世界を目指して、相棒となるプロダクトやサービスを生み出し続けます。',
    'https://hamee.co.jp/recruit/love-odawara',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    6,
    '株式会社サイバーエージェント',
    'c832ede4-9c96-4d3f-9a5e-ab2a66497280.webp',
    E'サイバーエージェントはインターネットを軸に、メディア事業、インターネット広告事業、ゲーム事業と主に3つの事業を展開しています。当社が展開する競輪業界売上No.1（※）のインターネット競輪投票サービス「WINTICKET」は、Flutterで開発しております。\n※2023年10月～12月の勝者投票券売上実績。（自社調べ）',
    'https://www.cyberagent.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    7,
    '株式会社ハイヤールー',
    '6cb7afa5-74e0-4a4b-b94e-1ff06825097c.webp',
    E'HireRoo（ハイヤールー） は、エンジニア採用を効率化するコーディンス試験サービスです。\n幅広い設問が豊富に揃い、職能やレイヤー、測りたいスキルに合わせて最適な試験を作ることができます。\nさらに英語対応もしており、海外採用にも利用可能です。\n詳しくはこちらをご覧ください！\nhttps://hireroo.io/',
    'https://hireroo.io/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    8,
    '株式会社ゆめみ',
    '35b0d521-e0c6-40a7-947c-f72e9ac404ff.webp',
    E'6000万人のみんな知ってるあのサービスも、ゆめみが一緒に作ってます。大手企業や急成長スタートアップと共創型でWeb/スマホのサービス作りや内製化支援を行っています。【エンジニアが最も成長できる会社No.1】を目標にしたアジャイル組織として先端を走るエンジニア集団です。',
    'https://www.yumemi.co.jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    9,
    '株式会社YOUTRUST',
    '5524fd15-566f-4b4b-9a4b-f12f7a387d00.webp',
    E'「日本のモメンタムを上げる 偉大な会社を創る」をビジョンに掲げ、次世代のキャリア市場・キャリア形成の文化を創るため、キャリアSNS「YOUTRUST」や、法人向けHR Tech Saasを開発しています。\n「YOUTRUST」のiOS/AndroidアプリはFlutterで開発されています。\nFlutterの勉強会の主催も行っており、今後もFlutterコミュニティへの貢献に努めてまいります',
    'https://youtrust.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    10,
    '株式会社MIXI',
    '05353993-22b1-42af-a6e7-764b398db1aa.webp',
    E'MIXIは「豊かなコミュニケーションを広げ、世界を幸せな驚きで包む。」というパーパスのもと、主にスポーツ、ライフスタイル、デジタルエンターテインメントの3つの領域で事業を推進し、友人や家族と一緒に楽しむコミュニケーションサービスを提供しています。',
    'https://mixi.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    11,
    '株式会社メドレー',
    '1b973626-11e4-4784-8e01-ebc6268c8bb6.webp',
    E'「医療ヘルスケアの未来をつくる」というミッションのもと、医療ヘルスケア分野の課題解決を目指すメドレー。人材採用システム「ジョブメドレー」やクラウド診療支援システム「CLINICS」などを中心に複数のプロダクトを展開しています。',
    'https://www.medley.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    12,
    '株式会社GENDA',
    'f3a49eb1-2662-4264-862e-a902fd17d7ee.webp',
    E'GENDAは、「世界中の人々の人生をより楽しく」をAspirationに掲げ、世の中に流通する「楽しさの総量」を増やすことを目指すエンタメ企業です。全国で「GiGO」などのアミューズメント施設を展開するなど、幅広い事業を行っています。',
    'https://genda.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    13,
    '株式会社プラゴ',
    'cfa6da7f-bf7b-4767-976d-3e41a1678759.webp',
    E'「続けたくなる未来を創る」をパーパスに、"充電習慣・充電体験"をデザインするEV充電ビジネスを展開。\n全国の充電ステーションの検索、空き情報確認、予約、決済をシームレスにつなぐ、EVユーザーアプリ「Myプラゴ」をFlutterで開発してます！',
    'https://plugo.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    14,
    '株式会社Linc’well',
    '8bbbbbf5-a458-4081-a041-d888a800174f.webp',
    E'Linc''wellは「テクノロジーを通じて、医療を一歩前へ」をミッションに掲げ、医療を効率化し患者の医療体験と医療の質の向上を目指した事業展開を行っています。2023年リリースのFlutterアプリ「クリフォア」を開発する仲間を募集中です！',
    'https://recruit.linc-well.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    15,
    '株式会社インフキュリオン',
    '6d78a8fc-51d3-4acc-ad68-c8352be446e2.webp',
    E'インフキュリオンは「決済から、きのうの不可能を可能にする。」をミッションに、社会に新たな価値を生み出し、変革する事業創造イネーブラーです。\n目指すのは、すべての企業がFintech化していく未来。あらゆる企業がサービスに金融機能を組み込めるよう、『Wallet Station』や『Xard』などの自社プラットフォームを提供しています。',
    'https://infcurion.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    16,
    'RevenueCat',
    '0458e1bc-5ed3-4d9c-9248-e28e3eba2d41.webp',
    E'RevenueCatは、サブスクアプリの収益化を支援する包括的なプラットフォームです。企業はRevenueCatを利用して、アプリ内課金の管理、サブスクリプションの追跡、収益分析を一元化できます。シームレスな統合と強力な分析ツールを提供することで、収益の最大化をサポートし、継続的な成長を促進します。Notion、Photoroom、ZOZOなど3万2千を超えるアプリで採用され、サブスクビジネス成功に必要な柔軟なソリューションを提供しています。',
    'https://www.revenuecat.com/jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    17,
    '株式会社ビットキー',
    '42723fb3-273a-413c-893f-89bb9c99eea5.webp',
    E'ビットキーは、独自開発のデジタルコネクトプラットフォームを通して、人と「暮らし」や「仕事」の間にある分断を解消するアプリ/SaaSを開発しています。 あらゆるサービスやモノを柔軟につなげることで、体験のアップデートを進めています。',
    'https://bitkey.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    18,
    '株式会社出前館',
    '2a4cbb69-3500-475a-bfc2-980782f619bb.webp',
    E'出前館はクイックコマースサービスとして領域を拡大し、当社のコーポレートミッション「テクノロジーで時間価値を高める」に基づき、利用いただいた皆さまに対して“時間価値の最大化“を実現していきたいと考えています。\n地域活性化とともに、少子高齢化や買い物難民の増加をはじめとした地域や社会課題の解決に向き合い、社会にとって不可欠なライフインフラとして日本経済の発展に貢献できるサービスを目指して挑戦を続けています。',
    'https://recruit.demae-can.co.jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    19,
    'Codemagic',
    '77bea69d-5a57-426d-922a-c9e85155eb84.webp',
    E'Flutter developers use Codemagic CI/CD since Flutter Live in 2018 and they love it!\nFlutter developers use Codemagic to automate their release pipeline to the app stores and now Codemagic has M2 Mac Minis available on free tier!',
    'https://codemagic.io/start/?utm_source=events&utm_medium=Flutter_Kaigi',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    20,
    'チームラボ株式会社',
    'dc3c5be6-a166-4ef0-ac82-ba7d18120ad1.webp',
    E'最新のテクノロジーを活用したソリューション、大規模なシステム開発や、プロダクト、デジタルコンテンツの制作、都市計画や建築空間設計などを行う。\nアーティスト、プログラマ、エンジニア、デザイナー、CGアニメーター、数学者、建築家など、デジタル社会の様々な分野のスペシャリスト総勢1000名から構成されているウルトラテクノロジスト集団で、アート、サイエンス、テクノロジー、クリエイティビティの境界を越えて、集団的創造をコンセプトに活動している。',
    'https://www.team-lab.com/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    21,
    '株式会社Omiai',
    '02ad860c-e534-44ad-80ad-8395e5304b9f.webp',
    E'Omiaiは、累計1000万ユーザーが利用するプロダクトであり、「結婚を見据えた真面目な出会い」をコンセプトに30代のユーザーを中心に利用されています。\n\n社会影響としては、年間約6万人以上がOmiaiで出会い、その後多数がご結婚され、結婚数や少子化対策にも貢献している状況です。行政との提携も複数あります。\n\nエンジニアリングにおいては、新機能開発、新技術導入や改善を常時走らせており、チャレンジも多いです。チャレンジが多いからこそ、開発に集中しやすい環境を大切にしています。',
    'https://enito.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    22,
    '株式会社LayerX',
    '515688d1-9863-4e23-a498-2a3d2d66b96a.webp',
    E'LayerXは、「すべての経済活動を、デジタル化する。」をミッションに掲げるスタートアップです。\n法人支出管理サービス「バクラク」や三井物産らとの合弁によるFintech事業、AI・LLM事業などを展開。',
    'https://layerx.co.jp',
    'silver'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    23,
    '株式会社ギークニア',
    '2bb85cc7-64ec-43dc-a75b-9d9d685e2595.webp',
    E'「ギークの楽園をつくる」ことをミッションにIT専門職の皆さんのなめらかで愉快なキャリアを支援しています。カウンセラーは全員、開発エンジニアの経験がありますので、こだわりたい技術スキル、キャリアなど専門職ならではのお悩みをご相談いただけます。',
    'https://geekneer.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    24,
    '東急株式会社',
    '7412f8b3-ec67-4298-a272-126f55762ae6.webp',
    E'東急URBAN HACKSは「街づくりのDX」を実現するための内製開発チームです。東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？',
    'https://10q89s.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    25,
    'ENECHANGE株式会社',
    '9a91510b-08c9-41d4-bb11-f2a19d58a425.webp',
    E'ENECHANGE株式会社は「エネルギー革命」を技術革新により推進し、より良い世界を創出することをミッションとするエネルギーベンチャー企業です。\nモバイルアプリ開発にFlutterを使っています。本イベントに協賛させていただき光栄です！',
    'https://engineer-recruit.enechange.co.jp/',
    'silver'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    26,
    'Pioneer株式会社',
    '2df416d3-584a-4493-8595-0d5a52d8f174.webp',
    E'パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。\n現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます',
    'https://jpn.pioneer/ja/',
    'silver'
  );

INSERT INTO
  public.session_venues
VALUES
  ('d6432c3c-3ef9-44ef-aa69-78f5e4dd867d', 'A Dash');

INSERT INTO
  public.session_venues
VALUES
  ('f6ee9501-0698-44ea-ad21-eb051ee94a8e', 'B Dash');

-- セッション
INSERT INTO
  public.sessions
VALUES
  (
    'e97ebf37-5753-43c9-83ea-2be68e7a4363',
    'Seamless Flutter Native Integration: FFI & Pigeon',
    '## 概要
This presentation introduces two tools for bridging Flutter apps with native code: FFI (Foreign Function Interface) and Pigeon. FFI enables direct calls to C/C++ functions, optimizing performance and hardware access. Pigeon streamlines method invocations between Flutter and native platforms (Android/iOS), facilitating better data communication. I’ll demonstrate the implementation and success stories of using these tools to enhance native functionality in Flutter applications.

## 想定視聴者
Aiming to expand knowledge of FFI & Pigeon for native platform integration.',
    '2024-11-22 15:30:00+09',
    '2024-11-22 16:10:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.126095+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '61d31fb9-fbc5-4d01-aad5-139e6568db15',
    '体験！マクロ時代のFlutterアプリ開発',
    '## 概要
Dart の新機能であるマクロ（Dart macros）の登場により、Flutter アプリ開発で煩雑だったボイラープレートの問題や build_runner によるコード生成の問題の解決が期待されています。

とはいえマクロはまだまだ試験的に公開されている段階であるために自由に触りづらく、できることを把握してどう活用するかをイメージしづらいのが現状です。サンプルとして話題に上がるマクロも JSON とオブジェクトの変換が簡単になるというもので、Flutter アプリ開発にどれほどのインパクトをもたらす機能なのかをイメージするには力不足です。

このセッションでは、実際に Flutter アプリ開発で活用することを想定したマクロをいくつか紹介し、実際にコーディングして使ってみることで、マクロ導入後の Flutter アプリ開発がどのように変化するのかを体験します。

来るマクロの正式リリースに備え、マクロの活用方法や作り方、そして適切な距離感を今から考えてみませんか？

## 想定視聴者
- 2025 年以降も Flutter アプリ開発を続ける予定のすべての開発者
- マクロを使う方・作る方どちらの目線もカバーした内容です',
    '2024-11-22 11:00:00+09',
    '2024-11-22 11:40:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.211708+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '18ffaf08-03ac-4284-95cf-bd217dbccd69',
    'OS 標準のデザインシステムを超えて - より柔軟な Flutter テーマ管理',
    '## 概要
Flutter SDK は、Google の Material Design と Apple の Human Interface Guidelines に準拠したテーマ (Material Theme, Cupertino Theme) と関連 API を提供しており、これにより OS 標準のデザインに沿ったアプリ開発が容易になります。
しかし、独自のデザインシステムを採用したい場合にテーマ管理が複雑化したり、OS 標準のデザインシステムアップデートに伴う破壊的変更により開発コストが増大したりする可能性があります。

本セッションでは、Flutter のテーマと各 Widget のスタイルの関係性を掘り下げ、OS 標準のデザインシステムへの依存を軽減するテーマ管理のアプローチを発表します。
これにより、独自のデザインシステムの実現や、OS 標準のデザインシステムアップデートの影響を最小限に抑えることを目指します。
加えて、Flutter Roadmap でも触れられている blankcanvas の最新動向についても解説します。

## 想定視聴者
- 独自のデザインシステムを Flutter アプリに適用したいと考えている開発者
- Flutter のテーマ管理をより深く理解し、効率的な開発手法を学びたい開発者',
    '2024-11-22 13:30:00+09',
    '2024-11-22 14:10:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.354058+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'b4484026-c80b-48ae-a518-f9c14f04f5a8',
    'Figma Dev Modeで変わる！Flutterの開発体験',
    '## 概要
2024年に発表されたFigmaの新機能 フォーカスビュー、ステータス管理、etc... これらDev Modeの機能の概要を説明すると共に、ベストプラクティスを共有します。
Figma Dev Modeの活用がFlutterの開発体験をどれだけ向上されるかをご覧頂きます。

エンジニアとデザイナーが共同で発表するこのトークでは、デザインから実装までの一貫したワークフローをロールプレイング形式でお見せします。
エンジニアとデザイナーそれぞれの仕事の相互理解に繋がる内容で、一緒にご覧頂くことで組織のコラボレーションを強化することにも繋がるでしょう。

## 想定視聴者
- Flutterエンジニア
  デザイナと協業し、Widgetの実装等を行うFlutterエンジニア
- UI/UXデザイナー、
  デザインツールとしてFigmaを利用し、Flutter開発者との協業するデザイナー。
- プロダクトマネージャー
  デザインと開発のプロセスを効率化し、チームのアウトカムを向上させたいマネージャー',
    '2024-11-21 13:50:00+09',
    '2024-11-21 14:30:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.727621+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '454605d6-b1b5-40f4-85c6-1636a6c32b1a',
    'Flutterアプリで可用性を向上させたFeatureFlagの運用戦略とその方法',
    '## 概要
WINTICKETアプリは2021年からトランクベース開発をFeatureFlagを取り入れながら行ってきました。
大規模が故に常に10数個のFeatureFlagをコードベースに埋め込みながら新機能の開発を進めていますが、公開前の機能が見えてしまったり、リリース前のコードが実行されてしまうなどの問題がいくつかありました。

本セッションではFeatureFlag運用を3年ほどした経験から、WINTICKETアプリ開発での具体的な運用方法とどのように可用性を向上させたFeatureFlagの運用戦略をとっているかを紹介します。

・WINTICKETでどのようにFlutterでFeatureFlagを用いたトランクベース開発の運用をしているかの紹介
・その運用で実際に起きた不具合例の紹介
・そのような不具合がどのような原因で発生したのかの分析
・不具合を起こさないためのFeatureFlag運用戦略とその具体的な対応方法の紹介

## 想定視聴者
・FeatureFlagを用いたトランクベース開発をしている方
・FlutterアプリでFeatureFlagを用いたトランクベース開発を検討している方',
    '2024-11-21 13:00:00+09',
    '2024-11-21 13:40:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.035295+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'f4966e95-b266-4edc-abde-f61c359b3a40',
    'キャッシュレス決済アプリでのFlutterの部分的採用から全面採用まで',
    '## 概要
KDDI株式会社では、au PAYアプリを内製開発しており、2023年に部分的にFlutterを採用しました。
基本的にネイティブ（Kotlin/Swift）で開発しているところに、Add-to-appにより部分的にFlutterを取り入れている形です。
また、2024年には、ネイティブで開発してきたau PAYの関連アプリをフルリプレイスする形でFlutterを全面採用することにしました。
Flutterの全面採用は、アプリ開発では勿論、API-GWの開発でも採用しており、バックエンドを含めたAll Flutterなプロジェクトになっています。

本セッションでは、Flutterの部分的採用から全面採用に至るまでに得られた知見を皆様にお届けします。

・Add-to-appによるFlutterの部分的採用
  ・Flutterで開発した機能
  ・部分的採用で得られた恩恵と課題
  ・状態管理にBlocを採用した話
・バックエンドも含めたFlutter（Dart）の全面採用
  ・全面採用に踏み切った理由と狙い
  ・All Dartによるクロスファンクショナルな開発
・部分的採用か全面採用かの判断の勘所

## 想定視聴者
・既存のネイティブアプリにFlutterを部分的に採用することに興味がある方
・現場でFlutterを部分的に採用するか全面採用にするかで迷われている方',
    '2024-11-21 15:40:00+09',
    '2024-11-21 16:20:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.113082+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '4156b633-8043-4d94-8da8-39c367088c59',
    'アニメーションを最深まで理解してパフォーマンスを向上させる',
    '## 概要
Flutter でのアニメーション実装は、簡易に実装できてアプリの魅力を向上させる重要な機能ですが、複雑なアニメーションや大規模なアプリケーションでは、パフォーマンスの問題に直面することがあります。
複雑なアニメーションを実装する際、フレームレートの低下やメモリ使用量の増加など、パフォーマンスの低下が課題となっています。また、アニメーションの最適化手法や、適切なタイミングでの RepaintBoundary の使用など、開発者が理解すべき点が多岐にわたります。
本セッションでは、 Flutter のアニメーションを深く理解し、パフォーマンスを向上させるための実践的な手法を紹介します。 Flow を活用した複雑なアニメーションの実装、アニメーションのパフォーマンス最適化テクニック、そしてレンダリングを最小限に抑えるための tips について詳しく解説します。
1. Flutter アニメーションの基本概念と内部実装を理解する
2. Flow を使用した高度なアニメーションの実装手法
3. アニメーションパフォーマンスの測定と分析
4. レンダリング最適化テクニック

## 想定視聴者
・ 複雑なアニメーションの実装に苦戦している開発者
・ アニメーションのパフォーマンス向上に興味がある開発者',
    '2024-11-21 15:40:00+09',
    '2024-11-21 16:20:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.200971+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '6ccbb95b-ddaf-460e-904b-2f91a5ef8d5f',
    'Dart Native Assets で広がる開発の幅',
    '## 概要
Dart や Flutter ではいままで、ビルド時に追加の処理を行う手段がありませんでした。
しかし最近、 Native Assets と呼ばれる新機能が追加され、ビルド時に追加の処理を行うことが可能になりました。
本LTでは、 Native Assets とはそもそもどんな機能なのか、どのように活用できるのかをお話しします。


## 想定視聴者
Dart/Flutter でアプリやパッケージ開発をする方全般
特に、FFIを用いた開発をしている方',
    '2024-11-21 18:00:00+09',
    '2024-11-21 18:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    TRUE,
    '2024-10-24 00:35:46.568367+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'dd12ee26-4d87-4081-a01a-621411231a94',
    'Shorebirdを活用したFlutterアプリの即時アップデート：Code Pushの実践と可能性',
    '本セッションでは、Flutterアプリの「Code Push」（即時コードアップデート）を実現するShorebirdについて深掘りします。Shorebirdを使用することで、FlutterアプリのDartコード部分の更新を、ストア審査なしでエンドユーザーのデバイスに即座に配信できます。

ただし、以下の重要な点に注意が必要です：
- 初回リリースや大幅な変更時は従来通りの審査が必要
- 更新できるのはDartコードのみ（ネイティブコードは不可）
- 各アプリストアの規約遵守が必須

このセッションでは、以下の点に焦点を当てます：
- Shorebirdの基本概念と仕組み
- Code Pushの使用方法（ライブデモ含む）
- CI/CDとの統合
- 料金体系
- Shorebirdの利点と課題
- 実プロジェクトでの経験に基づく知見と教訓
- アプリストア規約との整合性と法的考慮事項

想定視聴者：
- 即時アップデートに関心のある開発者
- Shorebirdを検討中の方
- 実践的な使用例を知りたい方

複数プロジェクトでのShorebird導入・運用経験を基に、実践的な洞察と具体的なアドバイスを提供します。理論と実践の両面から、Shorebirdの効果的かつ適切な活用方法をお伝えします。技術的側面だけでなく、法的な観点からも安全な利用指針を示します。',
    '2024-11-21 16:40:00+09',
    '2024-11-21 17:20:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.645872+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'e57f61d9-5b8b-49a0-89d1-7e3031e4407a',
    'WasmがFlutter on the Webにもたらす変化',
    'Flutter on the WebがStableになってから３年経ち、さまざまな変化が加えられてきました。
今年はHTML renderer廃止に関するドキュメントが公開され、今後CanvasとWasmのrendererが主力になっていきます
Wasmサポートによって良くなること、できなくなることをHTML,Canvas rendererと実際に動作を比較していきます。

このセッションでは、以下の内容についてお話しします：
1. Wasmとは一体何なのか
2. Flutter on the WebのWasmサポートで何が変わったのか
3. Wasmサポートで、できるようになること、できなくなることをHTML,Canvasとの比較
4. Flutter on the Webの今後

想定視聴者
Flutter on the WebのWasmサポートで何が変わるか興味がある方',
    '2024-11-22 10:10:00+09',
    '2024-11-22 10:50:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.805656+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '02ab1faa-508e-418e-a682-6443148fba5c',
    'Flutterテスト戦略の再考 〜品質と効率のバランスを求めて〜',
    '## 概要
皆さんが普段開発を行っているプロダクトにおける品質は、どのように保証していますか？QAエンジニアによる検証や、実装者が書くテストなど、さまざまな手法が存在すると思います。

Flutterのテストは一般的に次の3つの種類に分けられます。

- Unit Test
- Widget Test
- Integration Test

これらのテストはそれぞれ異なる役割を持ち、プロダクトの品質を高めるために重要です。特に、Unit TestやWidget Testに分類されるVRT（Visual Regression Testing）であるGolden Testを一度は耳にしたことがある方も多いのではないでしょうか？

しかし、それらのテストを有効かつ効率的に、そしてメンバーに納得感を持ってもらった状態で導入することは決して容易ではありません。

本セッションでは、以下のポイントについて議論します。

各種テストの役割とその効果的な導入方法
UI/UXを分けて考えてテストする方法
小さく始めるためのプラクティス

Flutterプロジェクトにおける品質保証とテスト効率のバランスを最適化するための具体的なアプローチを提供します。

## 想定視聴者
- テスト戦略について議論がしたい人
- テストを始めたい、またはすでに導入はできているがあまり効果を実感できていない人',
    '2024-11-21 17:40:00+09',
    '2024-11-21 17:50:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    TRUE,
    '2024-10-24 00:35:45.580524+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '000db4b0-4065-48ed-8925-afea039e2c72',
    'ImpellerとSkiaについて',
    'Impellerについて知っていますか？Skiaに代わる形で導入されたレンダリングエンジンでFlutter v3.7.0でiOSにおいてpreviewが始まり、v3.16.0ではAndroidでもpreviewが開始されました。
皆さん様々な印象があると思います。有効にしたら動作が速くなった、名前が強そう、シャドウ重くない？などなど...
とはいえ実際にSkiaからどのように変わり、なぜ速くなったのかを理解してる人はあまり多くないと思います。
FlutterはありがたいことにOSSでこの魔法のような技術がどう実現されているかを実際に読むことができます。
このトークではWidgetTreeから実際に描画されるまでを追いながらSkiaからImpellerでどのように改善されたかを解説していきます。

## 想定視聴者
- Flutterの内部を知りたい人
- Flutterに根ざして開発したい人',
    '2024-11-21 13:00:00+09',
    '2024-11-21 13:40:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.650257+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '3bbe9e9a-d41f-4c4d-994c-0064cd30fd94',
    'Monetizing Your Indie Flutter App to $1k in Monthly Revenue and Beyond',
    '## 概要
Only ~17% of apps reach $1k in monthly revenue. Learn best practices on crossing $1k MRR and beyond from personal experience building two profitable apps and advice from other successful app founders

## 想定視聴者
App developers/founders',
    '2024-11-22 14:30:00+09',
    '2024-11-22 15:10:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    16,
    FALSE,
    '2024-10-24 00:59:45.255258+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'ed95a319-5971-4335-b285-390768dc1be7',
    '僕のstate restorationアカデミア',
    '## 概要

ユーザーとして、この場面を想像してみてください：アプリAで長文を入力中、何度か他のアプリBに切り替えて使用し、アプリAに戻ったところ、突然すべてのデータが消えてしまいました。OSがアプリAを終了させてしまったのです！それはあまり良くないuxですね。開発者として、どうやってユーザーを挙動不審な行動に対して守ることができますか？実は、state restorationという簡単な解決方法があります。状態管理についてよく話しますが、state restorationのことを忘れることがあります。最新の個人開発アプリ「Japanana」ではこの機能が必要でしたので、実際の例を使ってその実装方法をこの発表で紹介したいと思います。

## 想定視聴者

• State restorationについて理解したい開発者
• State restorationを実装したく、その方法を学びたい開発者
• State restorationを実装した後、テスト方法を学びたい開発者',
    '2024-11-21 17:50:00+09',
    '2024-11-21 18:00:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    TRUE,
    '2024-10-24 00:35:45.290723+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '83119f09-e90c-468b-9a5e-69d2df646dfb',
    'DevTools Extensions で独自の DevTool を開発する',
    '## 概要
Flutter におけるアプリ開発において、 DevTools は必要不可欠な存在です。
しかし既存の DevTools に独自の機能をカスタマイズできることはあまり知られていません。
DevTools を独自にカスタマイズすることで、ログの表示制御、キャッシュの表示、アプリ内の開発者用の画面を DevTools に移行するなど、開発体験の向上が見込めます。

このセクションでは、devtools_extensions パッケージを使用して、 DevTools を独自にカスタマイズする方法や、
実際のチーム開発でどのような機能をカスタマイズしているかなどの実例を紹介します。
加えてパッケージ製作者向けに自身のパッケージに DevTools Extensions を提供する方法も解説します。

## 想定視聴者
- DevTools の開発に興味のある方
- チーム開発の生産性を上げたい方
- アプリ内の開発用画面を DevTools に移行させたい方',
    '2024-11-22 16:30:00+09',
    '2024-11-22 17:10:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.420406+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '00af53a6-db85-46b9-a10b-e92a6b1232a4',
    'ネットスーパーがスクリーンリーダーに対応した話 ~あるいはアクセシビリティ向上によるユーザー獲得~',
    '## 概要

令和6年（2024年）4月1日に「改正障害者差別解消法」が施行され、事業者による障害のある方への合理的配慮の提供が義務化されました。ECサイトにおいては誰もが安心してサービスを利用できるように、ウェブアクセシビリティの確保が求められています。

そんななか、私が所属する株式会社10Xで提供している小売チェーン向けECプラットフォームStailerでは視覚障害者の方により便利なネットスーパー・ネットドラッグストア利用体験を提供すべく、スクリーンリーダー（音声読み上げソフト）対応を実施しました。

スクリーンリーダーはFlutterがフレームワークとしてサポートするアクセシビリティ機能の一つでもあります。他にはフォントサイズやコントラストがサポートされています。

このセッションではFlutterが提供するスクリーンリーダーをサポートする機能について説明するとともに、実際にStailerがスクリーンリーダーに対応した際に困ったことやワークアラウンドの紹介、チームにスクリーンリーダー対応を広めるための活動などをお話します。

参考 https://product.10x.co.jp/entry/2024/07/01/124355

## 想定視聴者
- アクセシビリティ対応に興味がある方
- チームの実装方針を決めたり広めたりすることがある方',
    '2024-11-21 11:00:00+09',
    '2024-11-21 11:40:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.497072+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '5fa4f6aa-47ef-40d9-b6bb-216493ffc1b1',
    '実践的パッケージ戦略',
    '## 概要
アプリケーションの機能やレイヤーをディレクトリで分けて表現することは普通に行うことだと思います。
このディレクトリの構成を機能単位やレイヤーでパッケージ化します。

パッケージ化すると機能ごとの依存度が減り、意図しない機能を実行する危険性を減らすことができます。
また、単一のパッケージのみテストを実行したり、依存度が少ないことで機能を切り離したりすることも比較的容易になります。

ただし、レイヤーでパッケージ化する場合はある程度入念な設計が必要になります。
例えば、 UI から直接通信処理を実行させたくないような場合、単純にパッケージを分割しているだけではファイルをインポートすることで簡単に処理を実行できてしまい、あまりその恩恵を受けることができません。
この恩恵を受けるための一つの手法として依存性逆転の原則があります。

ここでは、 Riverpod を利用した依存性逆転の原則の実装の説明と melos を利用した依存の解決方法、並列でテストを実行した際のカバレッジの算出など、開発の現場で行った実践的なお話をさせてもらいます。

## 想定視聴者
- これからサービスを立ち上げる方
- アプリケーションが大きくなって依存の整理に苦しんでいる方',
    '2024-11-21 14:50:00+09',
    '2024-11-21 15:30:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.875048+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '6cda6895-57f8-47dc-ab29-ebcbd9c7f95a',
    '気をつけたい！Desktop対応で陥りやすい罠とその対策',
    '## 概要
Mobile向けに開発したものをWebや他のDesktopプラットフォームで表示すると、「なんか違う？」と感じたことはありませんか？
本セッションでは、MobileとDesktopをワンソースで開発する中で遭遇した実際の事例を基に、Desktopプラットフォームでの開発時に特に注意が必要なポイントを詳しく解説します。

- MobileとDesktopプラットフォームの違いについての概要
- プロジェクトで遭遇した具体的な事例の紹介
- 注意が必要なWidgetと、それぞれの対応策
- プラットフォームごとの差分を考慮した開発手法の提案

## 想定視聴者
- MobileアプリをDesktopプラットフォームに展開しようと考えている方
- Desktopプラットフォームでの開発に興味がある方
- ワンソースでの複数プラットフォーム対応に挑戦している方
- Desktopプラットフォームの開発経験が少ない方',
    '2024-11-22 13:30:00+09',
    '2024-11-22 14:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.952528+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'c56e7002-02e3-44d5-825c-b64934d12288',
    'Effective Form ~ Flutterによる複雑なフォーム開発の実践 ~',
    '## 概要

「フォーム」を取り扱うアプリの機能実装は、考慮すべき点が多岐に渡り、難易度が非常に高い部分です。

例えば、商品注文や申請作成の入力画面は、単純な入力画面とは性質が異なり、複雑な仕様の中でミスができない実装が求められます。
そこでは、高度なバリデーションや、複数ソースからの動的なデータ取得・更新など、「複雑なロジックをフロントで実装する必要がある」点で多くの課題が存在します。

Flutterの活用は、開発効率を上げる有効な手段の１つですが、単に導入するだけでは上記課題は解消しきれません。
本トークでは、複雑度が極めて高いフォーム開発を、宣言的かつ型安全に保つことで、効率的に実現する方法をご紹介します。

トピック

- Flutterでのフォーム画面開発
  - 実プロダクトの事例紹介
- 状態管理とバリデーションのアプローチ
  - 状態設計の手法
  - Riverpod, flutter_hooksの活用
  - フォーム要素間の相互依存関係の処理
  - 複数画面間でのデータ同期の実装
- ユーザー体験向上の工夫
  - エラー、アラートのフィードバック
  - 入力補助
  - 細かな操作感

## 想定視聴者

- フォーム開発の設計や実装に悩んだことがある方
- Flutterを使って効率的に複雑なフォームを実装したい方',
    '2024-11-22 17:30:00+09',
    '2024-11-22 18:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.280365+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '83897c0b-3a06-48a3-99e8-584195e318ac',
    'Firebase Dynamic Links終了に備える：FlutterアプリでのAdjust導入とディープリンク最適化',
    '## 概要
2025年8月にFirebase Dynamic Links（FDL）のサービスが終了することが発表され、多くのアプリ開発者がAdjust、AppsFlyer、Bitly、Branch、Kochavaなど代替ソリューションの選定を迫られています。

本セッションでは、実際のプロダクトで行ったFDLからAdjustへの移行作業を通じて、FDLの主要な機能をカバーしつつ、Adjustを用いたディープリンクの設定方法、ディープリンク機能の実装例、分析に不可欠なログの実装方法、およびパーソナライズされたユーザー体験を提供するための戦略とその制約を紹介します。

これにより、FDL終了後のアプリ開発において、どのようにスムーズな移行を実現し、必要な機能を維持するかについて、明確な指針を提供します。このセッションを通じて、ディープリンク技術がどのようにアプリの成長と成功を支えるかを理解し、実際の開発に役立つ知識を提供します。

## 想定視聴者
- FDLを利用したプロダクトを運用しており、代替の移行先を検討している方
- ユーザーエンゲージメントの向上やアプリの成長に関心があり、ディープリンク技術を活用したいと考えている方',
    '2024-11-22 15:30:00+09',
    '2024-11-22 16:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.351841+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '72c94df3-82ee-41ce-8b7f-d575eef2e9d9',
    'Master of Isolate',
    '## 概要
Dartでは、非同期処理と並行処理を効率的に行うためのキーコンポーネントとしてIsolateが提供されています。
特にFlutterアプリケーションのパフォーマンス向上やレスポンス性の向上において、Isolateの正しい理解と活用は非常に重要です。

このセッションでは、DartのIsolateの内部動作を深く掘り下げ、どのようにしてメモリを共有せずに並行処理を実現しているのかを解説します。また、実際のアプリケーション開発における典型的な使用例とベストプラクティスを紹介し、皆さんのコード品質を一段階上げる手助けをします。

このセッションの内容は以下の通りです：

- Isolateの基本概念とFutureとの違い
- DartにおけるIsolateの内部メカニズム
- メインIsolateとサブIsolate間の通信方法
- Isolateを使うべき箇所とそうでない箇所

想定視聴者：
- DartやFlutterでの非同期処理を深く理解したい方
- アプリケーションのパフォーマンスを最適化したいFlutter開発者
- Isolateの使い方に課題を感じている方
- 並行処理を活用し、スケーラブルなアプリケーションを作りたいエンジニア
- 実際のIsolateを理解した上で、活用したユースケース',
    '2024-11-21 17:30:00+09',
    '2024-11-21 17:40:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    TRUE,
    '2024-10-24 00:35:46.422751+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '0b5536f2-cde0-4224-b84c-df641daed1cb',
    'SliverAppBarはなぜ変化する？ ~ Sliverを内側から理解する ~',
    '## 概要
SliverAppBarはスクロールに応じて大きさが変化したり、スクロールを中断時に出現したりするAppBarのWidgetです。
ちょっとリッチなスクロールを実装する際に利用するこのWidget、
どうしてこのような動きが実現できるのでしょうか？
SliverAppBarを題材に、FlutterのSliverの中身を深掘りして解説します。
また、Flutter 3.24で追加されたPinnedHeaderSliver、SliverResizingHeaderについても、中身を解説します。

具体的には以下の内容について解説します。
- SliverAppBar の動き
- Sliverとは
- Sliverの仕組み
- SliverAppBarの仕組み
- PinnedHeaderSliver、SliverResizingHeaderについて

Flutterでのスクロール画面でのエラーに対し、
CustomScrollView、Sliverの利用はよく採用される解決策です。
今回の発表を通してSliverへの理解を深めていただき、
開発力の向上の一助となればと思います。

## 想定視聴者

- Flutterでリッチなスクロール画面を実装したい方
- Flutterの内部実装に興味のある方
- Sliverの取り扱いに悩んでいる方',
    '2024-11-22 17:30:00+09',
    '2024-11-22 18:10:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.495017+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'b57f3efd-b31d-4d57-aaa3-f45f1b17f727',
    '出前館アプリにおけるFlutterアプリ設計とそれを支えるCICD環境の進化',
    '## スポンサー名
株式会社出前館

## 概要
本セッションでは、出前館アプリにおけるFlutterアプリ設計、そしてそれらを支えるCICD環境について述べます。

セッション前半では出前館アプリのアプリ設計についてお話しします。
出前館アプリのフォルダ構成やAsset Management、そしてState Managementについてお話しします。
現在出前館では、提供するすべてのアプリでFlutterを採用しています。それら経験をご紹介しつつ、現在の出前館アプリのアプリ設計についてご紹介いたします。

セッション後半では出前館アプリを支えるCICD環境について述べます。
アプリ開発においてCICD環境はなくてはならない存在です。出前館アプリでは、これまでCICD環境(bitrise)の導入、React NativeからFlutterへの移行に伴う改修、そして新たなCICD環境(TeamCity)への移行に取り組んできました。
4年間という短い期間にこれだけの取り組みをしてきたチームは少ないでしょう。セッション後半では、この苦労と葛藤についてご紹介します。

## 想定視聴者
・Flutterを用いてアプリ開発を行うエンジニア
・CICD環境の構築やその運用に取り組むエンジニア',
    '2024-11-22 11:00:00+09',
    '2024-11-22 11:40:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    18,
    FALSE,
    '2024-10-24 00:35:47.037072+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'f6931b4e-30db-4a4e-9582-7a54c135b740',
    'Flutterによる効率的なAndroid・iOS・Webアプリケーション開発の事例 - スタディサプリ for SCHOOL',
    '## 概要
株式会社リクルートが提供するスタディサプリ for SCHOOLは、生徒の進路選択を支援するアプリケーションです。
勉強したい学問や興味のある仕事を発見する、学校の資料請求やオープンキャンパスを予約するといった、進路を考える際に必要となる機能を提供しています。利用できる環境は、Webアプリケーション、AndroidとiOSのモバイルアプリケーションです。

2024年現在、開発フレームワークとしてFlutterを採用しています。
初回リリースとなる2020年ではAndroidとiOSともにNative SDKによる開発でしたが、2023年にFlutterで作られたアプリケーションに更新しました。また、2024年にはVue.jsで作られたWebアプリケーションをFlutter Webで更新します。

このセッションはスタディサプリ for SCHOOLをFlutterでリプレースした事例において、Flutterにより開発効率がどのように向上したかを紹介します。そして、AndroidとiOSだけでなくWebもFlutterで開発することとした狙いと、その過程で得られた教訓を共有します。

## 想定視聴者
- Flutterによる効率的な開発に関心のある方
- Flutter Webに関心のある方',
    '2024-11-21 14:50:00+09',
    '2024-11-21 15:30:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    4,
    FALSE,
    '2024-10-24 00:43:06.725172+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '05b3d592-16e4-4831-b6f4-44870c555dd1',
    'Flutterと難読化',
    '## 概要
リリースしたアプリのクラッシュ事例を追うべく、Crashlyticsなどのサービスを眺めていると、身に覚えのないスタックトレースを見た経験はありませんか？ Flutter では release buildの場合には、コードが難読化されバイナリに含まれます。
FlutterはAndroid・iOSをはじめとして多くのプラットフォームで動作させる事ができるフレームワークです。Flutterはどのようにして、多くのプラットフォームをサポートする難読化を実現しているのでしょうか？

このセッションは、大きく2つの要素から構成されます。
1つ目は、難読化されたコードに直面したときのトラブルシューティングに焦点を当てたものです。例えば、難読化されたスタックトレースを読む方法や、flutter symbolize の仕組みやオプションについて紹介します。
2つ目は、Flutter の難読化そのものがどのようにして行われるかについて焦点を当てます。Flutterが難読化を行うステップと各プラットフォームでの実例を紹介しつつどのような難読化が行われるかについて紹介します。

## 想定視聴者
- 難読化に関連したトラブルシューティングについて知りたい人
- 難読化そのものについて理解を深めたい人
- Flutter 特有のマルチプラットフォームでの難読化について知りたい人',
    '2024-11-22 14:30:00+09',
    '2024-11-22 15:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    NULL,
    FALSE,
    '2024-10-24 00:35:46.725781+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '369e19d9-1f27-40e6-b294-64c6ca9bfcae',
    'マッチングアプリ『Omiai 』のFlutterへのリプレイスの挑戦',
    '## スポンサー名
株式会社Omiai

## 概要
株式会社Omiai では、長年運営してきたマッチングアプリ『Omiai 』をFlutterでリプレイスする取り組みを進めています。

iOS・Android 両プラットフォームの古いコードベースが抱える技術的負債や仕様の差異などの課題解決を目指し、ゼロからのFlutterプロジェクト始動を機に、様々な改善や工夫に挑戦しています。

本セッションでは、以下の取り組みを中心に、OmiaiのFlutterリプレイスについて紹介します。

• マルチパッケージ構成を活用し、依存の向きを厳密に管理したアーキテクチャ
• 業務ロジック層およびそれより抽象的な層のユニットテストをカバレッジ100%で記述する運用
• public_member_api_docsの全面適用など、採用しているlintルールやcustom_lint
• Flutter経験のないエンジニアができるだけスムーズに開発に参画できるキャッチアップ方法
• マージとデプロイのタイミングを分離したブランチ運用とリリースフロー
• Add-to-Appによる段階的なリプレイス

## 想定視聴者
• Flutter プロジェクトをこれから立ち上げる方
• 既存プロジェクトの開発生産性や保守性に課題を感じている方
• アーキテクチャ設計、テスト戦略、チーム育成などの知見を得たい方',
    '2024-11-22 16:30:00+09',
    '2024-11-22 17:10:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    21,
    FALSE,
    '2024-10-24 00:35:46.950989+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '71216c8c-fbb0-45e1-a72d-e544b6b712bd',
    'ステートマシンで実現する高品質なFlutterアプリ開発',
    '## 概要
APIとの通信は完了したのにローディング表示が消えない、データが存在しない場合の実装が漏れていて表示が崩れる…そんな問題に直面したことはありませんか？
このようなバグを減らし、優れたアプリを開発するための状態管理の手法は常に重要な課題とされてきました。

このセッションでは、チームラボが高品質なアプリ開発を実現するために採用しているステートマシンを用いた状態管理手法を詳しく解説します。

ステートマシンについての基本概念から始まり、簡単な画面での例を交え、現在Flutterにおいて主流の状態管理手法であるRiverpodとの比較も行います。 その後、複雑な画面でのステートマシン利用例や、弊社が開発した状態管理パッケージの紹介、ステートマシンを効率的に利用するためのアーキテクチャ、ステートマシンを採用することによって得られる、コーディング以外の利点についても説明します。

## 想定視聴者
* Flutterにおける状態管理に関心のある方
* setStateやHooks,Riverpodでの状態管理に課題を感じている方',
    '2024-11-21 13:50:00+09',
    '2024-11-21 14:30:00+09',
    'f6ee9501-0698-44ea-ad21-eb051ee94a8e',
    20,
    FALSE,
    '2024-10-24 00:51:14.944577+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    '4072087a-1854-4d45-812e-60beb344ff48',
    'Flutterアプリにおけるユーザー体験の可視化と計測基盤構築',
    '## 概要
SLI/SLOはSREでよく使われる概念ですが、モバイルアプリ開発にはまだ馴染みが薄いかもしれません。
私たちのプロダクトでは障害発生率が高く、早期の検知と解消が求められていました。
そこで、SLI/SLOの概念をモバイルアプリに適用し、ユーザー体験の低下を即時に検知する仕組みを構築しました。

この仕組みにより、以下の指標をリアルタイムで監視し、即時に対応可能となりました：
- 失敗率：一定以上のユーザーが機能利用時にエラーが発生したケース
- キャンセル率：一定以上のユーザーが機能利用時に何らかの理由でキャンセルしたケース
- 中断率：一定以上のユーザーが機能利用時にアプリを強制終了したケース

現在、この監視システムは40以上の機能に適用されています。

このセッションでは以下の内容について詳しく解説します：
1. SLI/SLOの基本概念
2. 一般的なSLI/SLOとユーザー体験を検知するSLI/SLOの違い
3. ユーザー行動の計測方法
4. 計測基盤の構築：工夫と課題
   - 時系列データのログ計測
   - 高オブザーバビリティの実現オプション
5. アラート基盤の構築：工夫と課題
   - ノイズ最小化の方法
   - チームにアラートを定着させる方法

## 想定視聴者
- Flutterアプリ内でのDartを用いた計測基盤構築に興味がある方',
    '2024-11-22 10:10:00+09',
    '2024-11-22 10:50:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    NULL,
    FALSE,
    '2024-10-24 00:35:45.804363+09'
  );

INSERT INTO
  public.sessions
VALUES
  (
    'a1ba9bfd-87c8-47b2-b5af-a50e0c64c300',
    'キャンセルします！処理を',
    '## スポンサー名

株式会社ビットキー

## 概要

処理をキャンセルするというパターンを取り入れると、非同期処理の内容の整理に役立つことがあります。
時間がかかる処理をタイムアウトさせたり、ユーザーの希望に応じて止めたり、あるいは複数のうち最も早い応答だけを採用するような処理に効果的です。
結果として不要な処理や通信が抑えられ、あなたのアプリの動きのレベルを一段引き上げることにもつながります。

本セッションでは、 協調的なキャンセルの考え方を `dart:async` の `Timer` を例に紹介したうえで、
Swift Concurrency や Kotlin Coroutine のキャンセルを、 Method Channel で Flutter の世界に持ち込む方法を解説します。
さらに、 Riverpod の `.autoDispose` と合わせて、キャンセルをアプリに組み込む方法についてもお話しします。

## 想定視聴者

* タイムアウトの実装方法にお悩みの方
* ユーザーの「やっぱりやめたい」という思いに応えたい方
* Flutter から Swift Concurrency や Kotlin Coroutine を扱いたい方',
    '2024-11-21 11:00:00+09',
    '2024-11-21 11:40:00+09',
    'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d',
    17,
    FALSE,
    '2024-10-24 00:35:46.876345+09'
  );

-- ジョブボード
INSERT INTO
  public.job_boards
VALUES
  (
    8,
    'https://hrmos.co/pages/yumemi/jobs/201050300000',
    '株式会社ゆめみのFlutter採用情報',
    '920d5844-4a38-4603-8a48-c9cac0b3a276.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    18,
    'https://hrmos.co/pages/demaecan/jobs?category=1610901862163755008',
    '出前館ではエンジニアポジションを多数募集中です！ご興味いただける方のご応募お待ちしております！',
    '085b198f-3e76-4969-9985-dc9c3881d369.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    20,
    'https://www.team-lab.com/recruit/career/flutter/?utm_source=banner&utm_medium=web&utm_campaign=FlutterKaigi2024',
    'チームラボ Flutterエンジニア 積極採用中！',
    '17b1802e-cde1-40c2-8bcd-9ad096d997a5.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    4,
    'https://www.recruit.co.jp/employment/mid-career/?utm_source=conference&utm_medium=referral&utm_campaign=202411flutter',
    '株式会社リクルート',
    '3393faac-27df-441f-8471-b7ba55f55ab4.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    6,
    'https://www.cyberagent.co.jp/careers/professional/',
    'メディア事業、広告事業、ゲーム事業と多様な事業を展開するサイバーエージェントでは、新たな縦読みマンガアプリ「ジャンプTOON」や競輪・オートレースの投票サービス「WINTICKET」、恋活・婚活マッチングアプリ「タップル」、AI事業本部アプリ運用カンパニーなど様々なプロダクトをFlutterで開発しています。当社に興味を持ってくださった方は、
ぜひ各募集要項をご確認ください。',
    '421389ec-a9e0-4b7c-9d44-eb41fbf6ef94.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    17,
    'https://herp.careers/v1/bitkeyinc/sypAepKT0ANl',
    '株式会社ビットキー　Flutterエンジニア募集中',
    'd64e27af-a422-427d-862a-3f536a512dc5.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (9, 'https://youtrust.jp/companies/youtrust', '株式会社YOUTRUST - 採用情報', '6b499f14-ee11-4fb2-b3c3-599fcde24d38.webp');

INSERT INTO
  public.job_boards
VALUES
  (
    21,
    'https://hrmos.co/pages/enito/jobs?category=1824376236688437250',
    '累計1000万人超ユーザー、社会課題解決サービスがFlutter全面リプレイス。開発者体験を作り上げていくフェーズでエンジニアを募集！',
    '0698a998-3c0a-43ac-bbfe-abfbe2310e68.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (22, 'https://layerx.co.jp/jobs', '株式会社LayerXは、エンジニアを採用中です！', 'c2acc453-9fe9-47cf-b8a9-98f87a02494c.webp');

INSERT INTO
  public.job_boards
VALUES
  (
    25,
    'https://engineer-recruit.enechange.co.jp/',
    'Flutterエンジニア積極採用中です（https://engineer-recruit.enechange.co.jp/）',
    '9b0b0760-24c5-489c-9ed1-66594b3e3d7e.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (26, 'https://jpn.pioneer/ja/corp/recruit/career/', 'Pioneer Corporation', 'd8511aad-221d-4954-8014-9f15582497bf.webp');

INSERT INTO
  public.job_boards
VALUES
  (3, 'https://tech.studyplus.co.jp/recruit', 'スタディプラス株式会社はカジュアル面談を受付中です', '1edb6f3c-db3f-4e47-9e55-013c18da146a.webp');

INSERT INTO
  public.job_boards
VALUES
  (1, 'https://herp.careers/v1/diverse/CoUDpvRq6blb', 'diverse-recruit', '40eac7d4-70a8-4315-b481-a4374e05e478.webp');

INSERT INTO
  public.job_boards
VALUES
  (13, 'https://www.wantedly.com/projects/1287104', '人・空間・社会をつなぐEV充電サービス', 'fd4aedc5-8cc6-45f1-9260-0523d8a1fc01.webp');

INSERT INTO
  public.job_boards
VALUES
  (
    14,
    'https://recruit.linc-well.com/engineer',
    '株式会社Linc''well: 最高の医療体験を作りたいFlutterエンジニア募集',
    '2d67bee5-f0a0-4acb-9311-d37cc56792c5.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (12, 'https://genda.jp/careers/', '株式会社GENDAの採用情報', 'ccc7765b-b4bd-42aa-ac95-482ca7302fcb.webp');

INSERT INTO
  public.job_boards
VALUES
  (24, 'https://10q89s.jp/', '東急(株) URBAN HACKS', 'fb3f471f-9ba2-4d50-a3ef-5a544fc9e195.webp');

INSERT INTO
  public.job_boards
VALUES
  (15, 'https://infcurion.com/careers/', '株式会社インフキュリオン 採用情報', '609e3530-355e-4c0e-bf96-e468e946434b.webp');

INSERT INTO
  public.job_boards
VALUES
  (5, 'https://hamee.co.jp/recruit/mid-career', 'クリエイティブ魂に火をつける', '29cf52c9-c300-4e48-a2ff-030c5b345406.webp');

INSERT INTO
  public.job_boards
VALUES
  (
    11,
    'https://note.com/medley/n/n32cbd564af5f',
    '「医療ヘルスケアの未来をつくる」日本最大級のサービスを持つメドレーが、Web/アプリエンジニア募集中！',
    '75684811-4a97-4f98-8915-ce1336c89993.webp'
  );

INSERT INTO
  public.job_boards
VALUES
  (
    10,
    'https://mixigroup-recruit.mixi.co.jp/jobs/?cats=engineer',
    'MIXIではコミュニケーションを一緒につくる仲間を募集しています！',
    '14f88bf5-0e66-483f-81f9-36055c8f4549.webp'
  );

-- speakers
INSERT INTO
  public.speakers
VALUES
  ('0b712b58-02e9-4ed1-a51d-7da03fc67457', 'Dreamwalker', '0b712b58-02e9-4ed1-a51d-7da03fc67457.webp', 'jaichangpark');

INSERT INTO
  public.speakers
VALUES
  ('a7dc0952-73c1-4e4a-a50a-aa6d553369ae', 'ちゅーやん', 'a7dc0952-73c1-4e4a-a50a-aa6d553369ae.webp', 'chooyan_i18n');

INSERT INTO
  public.speakers
VALUES
  ('1e6af66f-ac45-4f0d-a958-4ffd7239d1e4', '金ちゃん', '1e6af66f-ac45-4f0d-a958-4ffd7239d1e4.webp', 'LucasGoldner');

INSERT INTO
  public.speakers
VALUES
  ('651bd8da-0d3d-45f3-8e5c-eab1af10d8ad', 'ronnnnn', '651bd8da-0d3d-45f3-8e5c-eab1af10d8ad.webp', 'ronnnnn_jp');

INSERT INTO
  public.speakers
VALUES
  ('67bfcf7a-da80-4603-81ee-cefe1240fbca', 'Koki Yoshida', '67bfcf7a-da80-4603-81ee-cefe1240fbca.webp', 'koki8442');

INSERT INTO
  public.speakers
VALUES
  ('b10930a5-0ae6-4bb7-8035-92a5d435e6c5', 'Ren Edakawa', 'b10930a5-0ae6-4bb7-8035-92a5d435e6c5.webp', NULL);

INSERT INTO
  public.speakers
VALUES
  ('f50c024e-bd44-4740-b343-37a3e6fa71d7', 'futabooo', 'f50c024e-bd44-4740-b343-37a3e6fa71d7.webp', 'futabooo');

INSERT INTO
  public.speakers
VALUES
  ('d25f1161-8814-4925-9576-edbab683d6b5', '野瀬田　裕樹', 'd25f1161-8814-4925-9576-edbab683d6b5.webp', 'ynoseda');

INSERT INTO
  public.speakers
VALUES
  ('92c5021d-9866-47a0-b291-1d31a60bf9b4', 'すぎー', '92c5021d-9866-47a0-b291-1d31a60bf9b4.webp', 'u5_03');

INSERT INTO
  public.speakers
VALUES
  ('83283261-e532-4df0-b0ee-ee66afb7d79e', 'としき', '83283261-e532-4df0-b0ee-ee66afb7d79e.webp', 'osadakun9');

INSERT INTO
  public.speakers
VALUES
  ('3f53ad5d-788f-48ae-838f-9924ed43139f', 'mori', '3f53ad5d-788f-48ae-838f-9924ed43139f.webp', 'EXCode013');

INSERT INTO
  public.speakers
VALUES
  ('e086a7c1-4cc8-4c48-a58c-391ebe97e385', 'よーたん@ゆめみCTO', 'e086a7c1-4cc8-4c48-a58c-391ebe97e385.webp', 'yohta_watanave');

INSERT INTO
  public.speakers
VALUES
  ('932e6952-87e2-4820-8084-128d69a3536a', 'おさたく', '932e6952-87e2-4820-8084-128d69a3536a.webp', 'ostk0069');

INSERT INTO
  public.speakers
VALUES
  ('7f7e92a6-48d1-4263-95c6-4cf6c8810434', 'KyoheiG3', '7f7e92a6-48d1-4263-95c6-4cf6c8810434.webp', 'KyoheiG3');

INSERT INTO
  public.speakers
VALUES
  ('eff9b7c7-46ed-4839-afe6-8b2bf2df72b5', '後藤 孝輔', 'eff9b7c7-46ed-4839-afe6-8b2bf2df72b5.webp', 'Gotchi0001');

INSERT INTO
  public.speakers
VALUES
  ('08ba6150-1288-4e7e-9cfe-aaf9d6acc5fd', 'batch', '08ba6150-1288-4e7e-9cfe-aaf9d6acc5fd.webp', 'b4tchkn');

INSERT INTO
  public.speakers
VALUES
  ('bda5c5dd-2c44-49da-afa6-cd6560725064', 'みね', 'bda5c5dd-2c44-49da-afa6-cd6560725064.webp', 'nihon_kaizou');

INSERT INTO
  public.speakers
VALUES
  ('2a8b459b-10a2-4b8f-a240-c5bad7a06541', 'たまねぎ', '2a8b459b-10a2-4b8f-a240-c5bad7a06541.webp', '_chocoyama');

INSERT INTO
  public.speakers
VALUES
  ('b4ec5d7a-95c9-48ef-8643-5963071b713f', 'techiro', 'b4ec5d7a-95c9-48ef-8643-5963071b713f.webp', 'appgrape');

INSERT INTO
  public.speakers
VALUES
  ('4ede673b-d9bb-4d1d-bb1f-cebc6e23b998', '新垣清奈', '4ede673b-d9bb-4d1d-bb1f-cebc6e23b998.webp', NULL);

INSERT INTO
  public.speakers
VALUES
  ('43b8a468-0f62-4bd5-844d-92e8fe3f19cd', 'kuno', '43b8a468-0f62-4bd5-844d-92e8fe3f19cd.webp', 'Kunodayo_oboete');

INSERT INTO
  public.speakers
VALUES
  ('677f3a6c-587e-4fcc-a11a-37e13d795df9', 'Aoi Umigishi', '677f3a6c-587e-4fcc-a11a-37e13d795df9.webp', 'Aoi_Umigishi');

INSERT INTO
  public.speakers
VALUES
  ('025ad64a-9d43-43ba-8159-f0fcd9579769', 'ぎもちん', '025ad64a-9d43-43ba-8159-f0fcd9579769.webp', 'SKKbySSK_TC');

INSERT INTO
  public.speakers
VALUES
  ('ab10b87f-1f8a-48f5-b7fc-a4182e4f0a38', 'Masahiro Aoki', 'ab10b87f-1f8a-48f5-b7fc-a4182e4f0a38.webp', 'ma_freud');

INSERT INTO
  public.speakers
VALUES
  ('36a674f9-b098-4aeb-8dcf-26ecdca334e4', 'chigichan24', '36a674f9-b098-4aeb-8dcf-26ecdca334e4.webp', 'chigichan24');

INSERT INTO
  public.speakers
VALUES
  ('8443ba6e-8169-4e7e-8aee-6d200a58a5a5', 'akaboshinit', '8443ba6e-8169-4e7e-8aee-6d200a58a5a5.webp', 'akaboshinit');

INSERT INTO
  public.speakers
VALUES
  ('5d252897-2c14-4232-b51d-8f9bfa47fae3', 'Masatoshi Tsushima', '5d252897-2c14-4232-b51d-8f9bfa47fae3.webp', 'utisam');

INSERT INTO
  public.speakers
VALUES
  ('e63e4871-1e52-41f5-845c-335a0ec77e66', 'Kosuke Saigusa', 'e63e4871-1e52-41f5-845c-335a0ec77e66.webp', 'KosukeSaigusa');

INSERT INTO
  public.speakers
VALUES
  ('e34f0e48-bc98-4621-9fd8-97fab8e4f112', 'Jeffrey Bunn', 'e34f0e48-bc98-4621-9fd8-97fab8e4f112.webp', 'jeffreybunn');

INSERT INTO
  public.speakers
VALUES
  ('cefa50ab-4d04-4cf1-a3f9-9ee50e2b630b', '廣部貴徳', 'cefa50ab-4d04-4cf1-a3f9-9ee50e2b630b.webp', 'taka1068');

INSERT INTO
  public.speakers
VALUES
  ('0116ff6a-5171-44d3-9733-f047f2f17930', '若宮浩司', '0116ff6a-5171-44d3-9733-f047f2f17930.webp', 'D_R_1009');

INSERT INTO
  public.speakers
VALUES
  ('a87ad2ac-dc69-44fb-861d-ef57f3a3f41b', 'そた', 'a87ad2ac-dc69-44fb-861d-ef57f3a3f41b.webp', '_sotaatos');

INSERT INTO
  public.speakers
VALUES
  ('a5efe6e5-0e8d-4720-aceb-27c105115772', 'ゆめみ', 'a5efe6e5-0e8d-4720-aceb-27c105115772', NULL);

-- session_speakers
INSERT INTO
  public.session_speakers_v2
VALUES
  ('05b3d592-16e4-4831-b6f4-44870c555dd1', '36a674f9-b098-4aeb-8dcf-26ecdca334e4');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('83897c0b-3a06-48a3-99e8-584195e318ac', 'b4ec5d7a-95c9-48ef-8643-5963071b713f');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('0b5536f2-cde0-4224-b84c-df641daed1cb', '677f3a6c-587e-4fcc-a11a-37e13d795df9');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('4072087a-1854-4d45-812e-60beb344ff48', '932e6952-87e2-4820-8084-128d69a3536a');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('e97ebf37-5753-43c9-83ea-2be68e7a4363', '0b712b58-02e9-4ed1-a51d-7da03fc67457');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('f4966e95-b266-4edc-abde-f61c359b3a40', 'b10930a5-0ae6-4bb7-8035-92a5d435e6c5');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('454605d6-b1b5-40f4-85c6-1636a6c32b1a', '08ba6150-1288-4e7e-9cfe-aaf9d6acc5fd');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('5fa4f6aa-47ef-40d9-b6bb-216493ffc1b1', '7f7e92a6-48d1-4263-95c6-4cf6c8810434');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('18ffaf08-03ac-4284-95cf-bd217dbccd69', '651bd8da-0d3d-45f3-8e5c-eab1af10d8ad');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('6cda6895-57f8-47dc-ab29-ebcbd9c7f95a', 'eff9b7c7-46ed-4839-afe6-8b2bf2df72b5');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('4156b633-8043-4d94-8da8-39c367088c59', 'bda5c5dd-2c44-49da-afa6-cd6560725064');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('00af53a6-db85-46b9-a10b-e92a6b1232a4', 'f50c024e-bd44-4740-b343-37a3e6fa71d7');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('c56e7002-02e3-44d5-825c-b64934d12288', '2a8b459b-10a2-4b8f-a240-c5bad7a06541');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('dd12ee26-4d87-4081-a01a-621411231a94', 'ab10b87f-1f8a-48f5-b7fc-a4182e4f0a38');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('e57f61d9-5b8b-49a0-89d1-7e3031e4407a', '8443ba6e-8169-4e7e-8aee-6d200a58a5a5');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('83119f09-e90c-468b-9a5e-69d2df646dfb', '67bfcf7a-da80-4603-81ee-cefe1240fbca');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('000db4b0-4065-48ed-8925-afea039e2c72', '3f53ad5d-788f-48ae-838f-9924ed43139f');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('b4484026-c80b-48ae-a518-f9c14f04f5a8', 'e086a7c1-4cc8-4c48-a58c-391ebe97e385');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('b4484026-c80b-48ae-a518-f9c14f04f5a8', 'a5efe6e5-0e8d-4720-aceb-27c105115772');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('02ab1faa-508e-418e-a682-6443148fba5c', '83283261-e532-4df0-b0ee-ee66afb7d79e');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('6ccbb95b-ddaf-460e-904b-2f91a5ef8d5f', '025ad64a-9d43-43ba-8159-f0fcd9579769');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('ed95a319-5971-4335-b285-390768dc1be7', '1e6af66f-ac45-4f0d-a958-4ffd7239d1e4');

INSERT INTO
  public.session_speakers_v2
VALUES
  ('72c94df3-82ee-41ce-8b7f-d575eef2e9d9', '4ede673b-d9bb-4d1d-bb1f-cebc6e23b998');
