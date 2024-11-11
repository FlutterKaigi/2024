BEGIN;

-- supabase_realtimeパブリケーションを削除
DROP PUBLICATION if EXISTS supabase_realtime;

-- テーブルなしでsupabase_realtimeパブリケーションを再作成
CREATE PUBLICATION supabase_realtime;

COMMIT;

-- パブリケーションにapp_minimum_versionsテーブルを追加
ALTER PUBLICATION supabase_realtime
ADD TABLE app_minimum_versions;
