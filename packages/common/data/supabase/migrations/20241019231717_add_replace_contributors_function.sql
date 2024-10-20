-- contributors　テーブルを新しいデータに更新する
-- [contributors]はJSONB型の配列で、各要素は以下のような形式です。
-- {name: string, avatar_url: string, contribution_count: integer}[]
-- 実行すると、既存の contributors は削除され、全ての contributors が新しいものに更新されます。
CREATE FUNCTION public.replace_contributors (contributors jsonb) returns void AS $$
BEGIN
  -- 全部消す
  DELETE FROM public.contributors WHERE TRUE;

  -- 入れる
  INSERT INTO public.contributors (name, avatar_url, contribution_count)
    SELECT j->>'name', j->>'avatar_url', (j->>'contribution_count')::integer
    FROM jsonb_array_elements(contributors) AS j;
END;
$$ language plpgsql;
