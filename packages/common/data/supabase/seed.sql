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
        (temp_id, 'x', 'minn_flutter'),
        (temp_id, 'medium', 'minn');
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
    'bc0103fb-98c5-4c17-ae9d-e0e2e357ad0f.svg',
    '累計1900万人が利用するマッチングサービス「YYC」を開発しています。YYCのiOSとAndroidはFlutterで開発しており、マッチング機能だけでなくライブ配信機能などもDartで実装しています。興味のある方はカジュアル面談まで！',
    'https://diverse-inc.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    2,
    '株式会社ディー・エヌ・エー',
    'e1341f82-460a-466d-8464-cb133417072e.png',
    'DeNAは、「一人ひとりに　想像を超えるDelightを」のミッションのもと、エンターテインメントと社会課題領域の両軸で事業を展開しています。',
    'https://dena.com',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    3,
    'スタディプラス株式会社',
    '908c645c-d118-4595-8a5c-3ae27f52b9c4.png',
    'スタディプラス株式会社は「学ぶ喜びをすべての人へ」をミッションに掲げています\nStudyplusは学習内容を記録・可視化・共有することによりモチベーション維持、 学習の習慣化を補助します\n私たちは学びに寄り添うプラットフォームを作ります',
    'https://tech.studyplus.co.jp/recruit',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    4,
    '株式会社リクルート',
    '2f556387-3f38-4635-b4f0-aef28efd5d67.png',
    '私たちは、個人と企業をつなぎ、より多くの選択肢を提供することで、「まだ、ここにない、出会い。」を実現してきました。いつでもどこでも情報を得られるようになった今だからこそ、より最適な選択肢を提案することで、「まだ、ここにない、出会い。」を、桁違いに速く、驚くほどシンプルに、もっと身近にしていきたいと考えています。',
    'https://www.recruit.co.jp/employment/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    5,
    'Hamee株式会社',
    '97c3bfb9-9eae-4227-91d3-c3325d7a76e9.png',
    '私たちHameeの「Mission」は『By your side, 人を彩るモノづくりと脱炭素の両立』です。\nこれからは地球にも寄り添いながら、よりいろどりあふれる世界を目指して、相棒となるプロダクトやサービスを生み出し続けます。',
    'https://hamee.co.jp/recruit/love-odawara',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    6,
    '株式会社サイバーエージェント',
    'c832ede4-9c96-4d3f-9a5e-ab2a66497280.png',
    'サイバーエージェントはインターネットを軸に、メディア事業、インターネット広告事業、ゲーム事業と主に3つの事業を展開しています。当社が展開する競輪業界売上No.1（※）のインターネット競輪投票サービス「WINTICKET」は、Flutterで開発しております。\n※2023年10月～12月の勝者投票券売上実績。（自社調べ）',
    'https://www.cyberagent.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    7,
    '株式会社ハイヤールー',
    '6cb7afa5-74e0-4a4b-b94e-1ff06825097c.png',
    'HireRoo（ハイヤールー） は、エンジニア採用を効率化するコーディンス試験サービスです。\n幅広い設問が豊富に揃い、職能やレイヤー、測りたいスキルに合わせて最適な試験を作ることができます。\nさらに英語対応もしており、海外採用にも利用可能です。\n詳しくはこちらをご覧ください！\nhttps://hireroo.io/',
    'https://hireroo.io/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    8,
    '株式会社ゆめみ',
    '35b0d521-e0c6-40a7-947c-f72e9ac404ff.png',
    '6000万人のみんな知ってるあのサービスも、ゆめみが一緒に作ってます。大手企業や急成長スタートアップと共創型でWeb/スマホのサービス作りや内製化支援を行っています。【エンジニアが最も成長できる会社No.1】を目標にしたアジャイル組織として先端を走るエンジニア集団です。',
    'https://www.yumemi.co.jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    9,
    '株式会社YOUTRUST',
    '5524fd15-566f-4b4b-9a4b-f12f7a387d00.png',
    '「日本のモメンタムを上げる 偉大な会社を創る」をビジョンに掲げ、次世代のキャリア市場・キャリア形成の文化を創るため、キャリアSNS「YOUTRUST」や、法人向けHR Tech Saasを開発しています。\n「YOUTRUST」のiOS/AndroidアプリはFlutterで開発されています。\nFlutterの勉強会の主催も行っており、今後もFlutterコミュニティへの貢献に努めてまいります',
    'https://youtrust.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    10,
    '株式会社MIXI',
    '05353993-22b1-42af-a6e7-764b398db1aa.png',
    'MIXIは「豊かなコミュニケーションを広げ、世界を幸せな驚きで包む。」というパーパスのもと、主にスポーツ、ライフスタイル、デジタルエンターテインメントの3つの領域で事業を推進し、友人や家族と一緒に楽しむコミュニケーションサービスを提供しています。',
    'https://mixi.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    11,
    '株式会社メドレー',
    '1b973626-11e4-4784-8e01-ebc6268c8bb6.png',
    '「医療ヘルスケアの未来をつくる」というミッションのもと、医療ヘルスケア分野の課題解決を目指すメドレー。人材採用システム「ジョブメドレー」やクラウド診療支援システム「CLINICS」などを中心に複数のプロダクトを展開しています。',
    'https://www.medley.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    12,
    '株式会社GENDA',
    'f3a49eb1-2662-4264-862e-a902fd17d7ee.png',
    'GENDAは、「世界中の人々の人生をより楽しく」をAspirationに掲げ、世の中に流通する「楽しさの総量」を増やすことを目指すエンタメ企業です。全国で「GiGO」などのアミューズメント施設を展開するなど、幅広い事業を行っています。',
    'https://genda.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    13,
    '株式会社プラゴ',
    'cfa6da7f-bf7b-4767-976d-3e41a1678759.png',
    '「続けたくなる未来を創る」をパーパスに、EVがワクワクするモビリティとして人と社会に根付くことを目指して”充電習慣・充電体験”をデザインするEV充電ビジネスを展開。\nTECH BLOG：https://www.tech.plugo.co.jp/',
    'https://plugo.co.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    14,
    '株式会社Linc’well',
    '8bbbbbf5-a458-4081-a041-d888a800174f.png',
    'Linc''wellは「テクノロジーを通じて、医療を一歩前へ」をミッションに掲げ、医療を効率化し患者の医療体験と医療の質の向上を目指した事業展開を行っています。2023年リリースのFlutterアプリ「クリフォア」を開発する仲間を募集中です！',
    'https://recruit.linc-well.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    15,
    '株式会社インフキュリオン',
    '6d78a8fc-51d3-4acc-ad68-c8352be446e2.png',
    'インフキュリオンは「決済から、きのうの不可能を可能にする。」をミッションに、社会に新たな価値を生み出し、変革する事業創造イネーブラーです。\n目指すのは、すべての企業がFintech化していく未来。あらゆる企業がサービスに金融機能を組み込めるよう、『Wallet Station』や『Xard』などの自社プラットフォームを提供しています。',
    'https://infcurion.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    16,
    'RevenueCat',
    '0458e1bc-5ed3-4d9c-9248-e28e3eba2d41.svg',
    'RevenueCatは、サブスクアプリの収益化を支援する包括的なプラットフォームです。企業はRevenueCatを利用して、アプリ内課金の管理、サブスクリプションの追跡、収益分析を一元化できます。シームレスな統合と強力な分析ツールを提供することで、収益の最大化をサポートし、継続的な成長を促進します。Notion、Photoroom、ZOZOなど3万2千を超えるアプリで採用され、サブスクビジネス成功に必要な柔軟なソリューションを提供しています。',
    'https://www.revenuecat.com/jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    17,
    '株式会社ビットキー',
    '42723fb3-273a-413c-893f-89bb9c99eea5.png',
    'ビットキーは、独自開発のデジタルコネクトプラットフォームを通して、人と「暮らし」や「仕事」の間にある分断を解消するアプリ/SaaSを開発しています。 あらゆるサービスやモノを柔軟につなげることで、体験のアップデートを進めています。',
    'https://bitkey.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    18,
    '株式会社出前館',
    '2a4cbb69-3500-475a-bfc2-980782f619bb.png',
    '出前館はクイックコマースサービスとして領域を拡大し、当社のコーポレートミッション「テクノロジーで時間価値を高める」に基づき、利用いただいた皆さまに対して“時間価値の最大化“を実現していきたいと考えています。\n地域活性化とともに、少子高齢化や買い物難民の増加をはじめとした地域や社会課題の解決に向き合い、社会にとって不可欠なライフインフラとして日本経済の発展に貢献できるサービスを目指して挑戦を続けています。',
    'https://recruit.demae-can.co.jp/',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    19,
    'Codemagic',
    '77bea69d-5a57-426d-922a-c9e85155eb84.svg',
    'Flutter developers use Codemagic CI/CD since Flutter Live in 2018 and they love it!\nFlutter developers use Codemagic to automate their release pipeline to the app stores and now Codemagic has M2 Mac Minis available on free tier!',
    'https://codemagic.io/start/?utm_source=events&utm_medium=Flutter_Kaigi',
    'platinum'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    20,
    'チームラボ株式会社',
    'dc3c5be6-a166-4ef0-ac82-ba7d18120ad1.png',
    '最新のテクノロジーを活用したソリューション、大規模なシステム開発や、プロダクト、デジタルコンテンツの制作、都市計画や建築空間設計などを行う。\nアーティスト、プログラマ、エンジニア、デザイナー、CGアニメーター、数学者、建築家など、デジタル社会の様々な分野のスペシャリスト総勢1000名から構成されているウルトラテクノロジスト集団で、アート、サイエンス、テクノロジー、クリエイティビティの境界を越えて、集団的創造をコンセプトに活動している。',
    'https://www.team-lab.com/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    21,
    '株式会社Omiai',
    '02ad860c-e534-44ad-80ad-8395e5304b9f.png',
    'Omiaiは、累計1000万ユーザーが利用するプロダクトであり、「結婚を見据えた真面目な出会い」をコンセプトに30代のユーザーを中心に利用されています。\n\n社会影響としては、年間約6万人以上がOmiaiで出会い、その後多数がご結婚され、結婚数や少子化対策にも貢献している状況です。行政との提携も複数あります。\n\nエンジニアリングにおいては、新機能開発、新技術導入や改善を常時走らせており、チャレンジも多いです。チャレンジが多いからこそ、開発に集中しやすい環境を大切にしています。',
    'https://enito.co.jp/',
    'gold'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    22,
    '株式会社LayerX',
    '515688d1-9863-4e23-a498-2a3d2d66b96a.png',
    'LayerXは、「すべての経済活動を、デジタル化する。」をミッションに掲げるスタートアップです。
法人支出管理サービス「バクラク」や三井物産らとの合弁によるFintech事業、AI・LLM事業などを展開。',
    'https://layerx.co.jp',
    'silver'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    23,
    '株式会社ギークニア',
    '2bb85cc7-64ec-43dc-a75b-9d9d685e2595.png',
    '「ギークの楽園をつくる」ことをミッションにIT専門職の皆さんのなめらかで愉快なキャリアを支援しています。カウンセラーは全員、開発エンジニアの経験がありますので、こだわりたい技術スキル、キャリアなど専門職ならではのお悩みをご相談いただけます。',
    'https://geekneer.com/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    24,
    '東急株式会社',
    '7412f8b3-ec67-4298-a272-126f55762ae6.png',
    '東急URBAN HACKSは「街づくりのDX」を実現するための内製開発チームです。東急グループの次の100年を変革する大プロジェクト。あなたの技術や知識を活かし、一緒に世界一の街づくりを目指してみませんか？',
    'https://10q89s.jp/',
    'bronze'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    25,
    'ENECHANGE株式会社',
    '9a91510b-08c9-41d4-bb11-f2a19d58a425.svg',
    'ENECHANGE株式会社は「エネルギー革命」を技術革新により推進し、より良い世界を創出することをミッションとするエネルギーベンチャー企業です。\nモバイルアプリ開発にFlutterを使っています。本イベントに協賛させていただき光栄です！',
    'https://engineer-recruit.enechange.co.jp/',
    'silver'
  );

INSERT INTO
  public.sponsors
VALUES
  (
    26,
    'Pioneer株式会社',
    '2df416d3-584a-4493-8595-0d5a52d8f174.jpg',
    'パイオニアは「より多くの人と、感動を」という企業理念のもと、数々の世界初、業界初の商品を展開しています。\n現在、企業ビジョン“未来の移動体験を創ります”の実現に向け、モビリティ領域におけるソリューションサービス企業への変革に取り組んでいます',
    'https://jpn.pioneer/ja/',
    'silver'
  );
