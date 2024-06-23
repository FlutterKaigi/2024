INSERT INTO sns_accounts
  (sns_type, account_name)
VALUES
  ('github', 'blendthink'),
  ('qiita', 'blendthink'),
  ('x', 'blendthink'),
  ('zenn', 'blendthink');

INSERT INTO staffs
  (name, avatar_url, introduction, sns_account_ids)
VALUES
  ('blendthink', 'https://avatars.githubusercontent.com/u/32213113?v=4', 'Hello, World!', ARRAY[1, 2, 3, 4]);
