INSERT INTO
  public.sections (section_id, max_capacity)
SELECT
  letter || '-' || lpad(number::text, 2, '0'),
  5 -- セッション登壇者用セクションは5人まで
FROM
  generate_series(1, 7) AS t (number),
  (
    VALUES
      ('S')
  ) AS l (letter);

-- 古いトリガーを削除
DROP TRIGGER assign_section_before_insert ON public.tickets;

DROP FUNCTION public.assign_section_on_insert;

-- 自動割当関数を作成
DROP FUNCTION public.get_available_section;

CREATE FUNCTION public.get_available_section (created_at_time TIMESTAMP WITH TIME ZONE, session_id UUID) returns varchar(4) language plpgsql AS $$
DECLARE
  assigned_section VARCHAR(4);
  session_order INTEGER;
BEGIN

  -- セッション登壇者用の分岐
  IF session_id IS NOT NULL THEN
    WITH ordered_sessions AS (
      SELECT
        id,
        ROW_NUMBER() OVER (ORDER BY id) as row_num
      FROM public.sessions
    )
    SELECT row_num INTO session_order
    FROM ordered_sessions
    WHERE id = session_id;

    -- 5人ごとにセクションを割り当て
    -- 例: 1-5番目 → S-01, 6-10番目 → S-02, ...
    RETURN 'S-' || LPAD(CEIL(session_order::numeric / 5)::text, 2, '0');
  END IF;

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

-- セクション割り当て用のトリガー関数
CREATE
OR REPLACE function public.assign_section_on_insert () returns trigger AS $$
BEGIN
  NEW.section_id := public.get_available_section(COALESCE(NEW.created_at, CURRENT_TIMESTAMP), NEW.session_id);
  RETURN NEW;
END;
$$ language plpgsql;

-- INSERTの前にセクションを割り当てるトリガーを作成
CREATE TRIGGER assign_section_before_insert before insert ON public.tickets FOR each ROW
EXECUTE function public.assign_section_on_insert ();
