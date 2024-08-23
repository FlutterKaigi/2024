-- チケットタイプのenumを作成
CREATE TYPE ticket_type AS enum('sponsor_booth', 'sponsor_invited', 'individual_sponsor', 'general', 'regular_speaker', 'sponsor_speaker');

-- ticketsテーブルを作成
CREATE TABLE tickets (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
  user_id UUID NOT NULL REFERENCES profiles (id) ON DELETE cascade,
  type ticket_type NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id)
);

-- インデックスを作成
CREATE INDEX idx_tickets_user_id ON tickets (user_id);

CREATE INDEX idx_tickets_type ON tickets (type);

-- RLSを有効化
ALTER TABLE tickets enable ROW level security;

-- RLSポリシーを作成
CREATE POLICY "ユーザーは自分のチケットのみ表示可能" ON tickets FOR
SELECT
  USING (auth.uid () = user_id);

CREATE POLICY "管理者はすべてのチケットを表示可能" ON tickets FOR
SELECT
  USING (auth.role () = 'admin');

CREATE POLICY "ユーザーは自分のチケットのみ作成可能" ON tickets FOR insert
WITH
  CHECK (auth.uid () = user_id);

CREATE POLICY "管理者はすべてのチケットを作成可能" ON tickets FOR insert
WITH
  CHECK (auth.role () = 'admin');

CREATE POLICY "ユーザーは自分のチケットのみ更新可能" ON tickets
FOR UPDATE
  USING (auth.uid () = user_id);

CREATE POLICY "管理者はすべてのチケットを更新可能" ON tickets
FOR UPDATE
  USING (auth.role () = 'admin');

CREATE POLICY "ユーザーは自分のチケットのみ削除可能" ON tickets FOR delete USING (auth.uid () = user_id);

CREATE POLICY "管理者はすべてのチケットを削除可能" ON tickets FOR delete USING (auth.role () = 'admin');
