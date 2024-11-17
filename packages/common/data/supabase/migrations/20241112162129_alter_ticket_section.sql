-- 新しいテーブル sections を作成します
CREATE TABLE public.sections (id serial PRIMARY KEY, section_id varchar(4) NOT NULL UNIQUE, max_capacity integer DEFAULT 5);

-- セクションIDを生成して挿入します（A-01 から D-14 まで）
INSERT INTO
  public.sections (section_id)
SELECT
  letter || '-' || lpad(number::text, 2, '0')
FROM
  generate_series(1, 14) AS t (number),
  (
    VALUES
      ('A'),
      ('B'),
      ('C'),
      ('D')
  ) AS l (letter);

-- プロフィールが無いユーザ用のセクションを追加します（Z-01）
INSERT INTO
  public.sections (section_id, max_capacity)
VALUES
  ('Z-01', NULL);

-- 自動割当関数を作成
CREATE
OR REPLACE function public.get_available_section (created_at_time TIMESTAMP WITH TIME ZONE) returns varchar(4) language plpgsql AS $$
DECLARE
  assigned_section VARCHAR(4);
BEGIN
  IF created_at_time >= '2024-11-12 00:00:00+09:00' THEN
    RETURN 'Z-01';
  END IF;

  SELECT s.section_id INTO assigned_section
  FROM public.sections s
  LEFT JOIN (
    SELECT section_id, COUNT(*) as current_count
    FROM public.tickets
    WHERE section_id IS NOT NULL
    GROUP BY section_id
  ) ts ON s.section_id = ts.section_id
  WHERE s.section_id <> 'Z-01' AND (ts.current_count IS NULL OR ts.current_count < s.max_capacity)
  ORDER BY s.section_id
  LIMIT 1;

  IF assigned_section IS NULL THEN
    RAISE EXCEPTION 'セクションの割り当て可能数を超えました';
  END IF;

  RETURN assigned_section;
END;
$$;

-- ticketsテーブルにsection_idカラムを追加
ALTER TABLE public.tickets
ADD COLUMN section_id varchar(4) REFERENCES public.sections (section_id) ON DELETE restrict;

-- セクション割り当て用のトリガー関数
CREATE
OR REPLACE function public.assign_section_on_insert () returns trigger AS $$
BEGIN
  NEW.section_id := public.get_available_section(COALESCE(NEW.created_at, CURRENT_TIMESTAMP));
  RETURN NEW;
END;
$$ language plpgsql;

-- INSERTの前にセクションを割り当てるトリガーを作成
CREATE TRIGGER assign_section_before_insert before insert ON public.tickets FOR each ROW
EXECUTE function public.assign_section_on_insert ();

-- 既存のレコードに対してsection_idを割り当て
UPDATE public.tickets
SET
  section_id = public.get_available_section (coalesce(created_at, CURRENT_TIMESTAMP))
WHERE
  section_id IS NULL;

-- 管理者は全てのセクションを閲覧・操作できるようにします
CREATE POLICY "Admin can access all sections" ON public.sections FOR ALL TO authenticated USING (role () = 'admin');

-- すべてのユーザはセクションを閲覧できるようにします
CREATE POLICY "Everyone can access sections" ON public.sections FOR
SELECT
  TO authenticated USING (TRUE);

-- -- セクションごとの割り当て済み数を返すビューを作成
-- CREATE VIEW public.section_counts
-- WITH
--   (security_invoker) AS
-- SELECT
--   s.section_id,
--   s.max_capacity,
--   coalesce(ts.count, 0) AS current_count
-- FROM
--   public.sections s
--   LEFT JOIN (
--     SELECT
--       section_id,
--       count(*) AS COUNT
--     FROM
--       public.tickets
--     WHERE
--       section_id IS NOT NULL
--     GROUP BY
--       section_id
--   ) ts ON s.section_id = ts.section_id;
