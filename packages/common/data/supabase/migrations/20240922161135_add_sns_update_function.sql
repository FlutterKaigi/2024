-- [user_id]のSNSアカウントを更新する
-- [sns_accounts]はJSONB型の配列で、各要素は以下のような形式です。
-- {type: social_networking_service_type, value: string}[]
-- 実行すると、既存のSNSアカウント登録は削除され、全てのSNSアカウントが新しいものに更新されます。
CREATE FUNCTION public.update_sns_accounts (user_id text, sns_accounts jsonb) returns void language sql AS $$
  -- 全部消す
  DELETE FROM public.profile_social_networking_services WHERE user_id = user_id;

  -- 入れる
  INSERT INTO public.profile_social_networking_services (id, type, value)
    SELECT user_id::uuid, CAST(j->>'type' AS social_networking_service_type), j->>'value'
    FROM jsonb_array_elements(sns_accounts) AS j;
$$;
