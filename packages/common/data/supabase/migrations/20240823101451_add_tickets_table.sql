-- チケットタイプのenumを作成
CREATE TYPE ticket_type AS enum(
  'sponsor_booth', -- スポンサーブースの運営来場
  'sponsor_invited', -- スポンサー招待
  'individual_sponsor', -- 個別スポンサー
  'general', -- 一般
  'regular_speaker', -- 一般セッション登壇者
  'sponsor_speaker' -- スポンサーセッション登壇者
);

-- ticketsテーブルを作成
CREATE TABLE tickets (
  id UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4 (),
  user_id UUID NOT NULL REFERENCES auth.users (id) ON DELETE cascade,
  type ticket_type NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- インデックスを作成
CREATE INDEX tickets_user_id_idx ON tickets (user_id);

-- RLSを有効化
ALTER TABLE tickets enable ROW level security;

-- RLSポリシーを作成
CREATE POLICY "ユーザーは自分のチケットのみ表示可能" ON tickets FOR
SELECT
  TO authenticated USING (auth.uid () = user_id);

CREATE POLICY "管理者はすべてのチケットを表示可能" ON tickets FOR
SELECT
  TO authenticated USING (auth.role () = 'admin');

CREATE POLICY "管理者はすべてのチケットを作成可能" ON tickets FOR insert TO authenticated
WITH
  CHECK (auth.role () = 'admin');

CREATE POLICY "管理者はすべてのチケットを更新可能" ON tickets
FOR UPDATE
  TO authenticated USING (auth.role () = 'admin');

CREATE POLICY "管理者はすべてのチケットを削除可能" ON tickets FOR delete USING (auth.role () = 'admin');
