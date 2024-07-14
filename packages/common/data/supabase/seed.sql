-- staffs
INSERT INTO
    staffs (name, icon_name, greeting)
VALUES
    ('井関竜太郎（いせりゅー）', 'iseruuuuu.webp', 'みんなで楽しむ！'),
    ('asuka', 'a-skua.webp', 'I □ Flutter'),
    ('酒井佑旗(yuki s)', 'yukisakai1225.webp', '第4回も楽しみましょう！'),
    ('尾上 遼太朗', 'YumNumm.webp', ''),
    ('minn', 'kitashio.webp', ''),
    ('blendthink', 'blendthink.webp', '開発担当'),
    ('mkosuke', 'shcahill.webp', ''),
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
    ('TK', 'TK-Guitar.webp', ''),
    ('sohichiro', 'sohichiro.webp', ''),
    ('白崎 紀充', 'tucur-prg.webp', '新しい繋がりを探して'),
    ('うめちゃん', 'umechanhika.webp', ''),
    ('shimizu', 'j1522158.webp', ''),
    ('cardseditor', 'cardseditor.webp', ''),
    ('yuta-ike', 'yuta-ike.webp', ''),
    ('萩尾 亮斗', 'akeybako.webp', '');

-- staff_social_networking_services
DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = '井関竜太郎（いせりゅー）';
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
        (temp_id, 'github', 'shcahill');
END $$;

DO $$
DECLARE
    temp_id INT;
BEGIN
    SELECT id INTO temp_id FROM staffs WHERE name = 'ENDO Takumi';
    INSERT INTO staff_social_networking_services (staff_id, type, value) VALUES
        (temp_id, 'github', 'ENDOTAKUMI'),
        (temp_id, 'x', 'endotakumi_dev'),
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
        (temp_id, 'github', 'KTmifune');
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
        (temp_id, 'github', 'TK-Guitar');
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
