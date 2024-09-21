BEGIN;

-- 既存のスポンサーデータを削除
DELETE FROM public.sponsors;

-- サンプルスポンサーを挿入
INSERT INTO public.sponsors (name, logo_name, description, url, type)
VALUES
  ('プラチナ株式会社', 'platinum_company.png', 'プラチナスポンサーの説明文です。', 'https://platinum-company.example.com', 'platinum'),
  ('ゴールド商事', 'gold_trading.png', 'ゴールドスポンサーの説明文です。', 'https://gold-trading.example.com', 'gold'),
  ('シルバーテクノロジー', 'silver_tech.png', 'シルバースポンサーの説明文です。', 'https://silver-tech.example.com', 'silver'),
  ('ブロンズソリューションズ', 'bronze_solutions.png', 'ブロンズスポンサーの説明文です。', 'https://bronze-solutions.example.com', 'bronze'),
  ('プラチナグループ', 'platinum_group.png', '2つ目のプラチナスポンサーの説明文です。', 'https://platinum-group.example.com', 'platinum');

-- 挿入されたデータを確認
SELECT * FROM public.sponsors;

COMMIT;
