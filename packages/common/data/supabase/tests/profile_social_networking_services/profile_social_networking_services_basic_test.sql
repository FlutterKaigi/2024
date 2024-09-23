BEGIN;

SELECT
  dbdev.install ('basejump-supabase_test_helpers');

CREATE EXTENSION "basejump-supabase_test_helpers"
WITH
  schema extensions;

SELECT
  plan (5);

-- テーブルの存在確認
SELECT
  has_table ('public', 'profile_social_networking_services', 'profile_social_networking_services テーブルが存在すること');

-- RLSが有効になっていることを確認
SELECT
  tests.rls_enabled ('public', 'profile_social_networking_services');

-- 主要なカラムの存在確認
SELECT
  has_column ('public', 'profile_social_networking_services', 'id', 'id カラムが存在すること');

SELECT
  has_column ('public', 'profile_social_networking_services', 'type', 'type カラムが存在すること');

SELECT
  has_column ('public', 'profile_social_networking_services', 'value', 'value カラムが存在すること');

SELECT
  *
FROM
  finish ();

ROLLBACK;
