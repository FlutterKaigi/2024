-- 関連するセッションを紐づける
ALTER TABLE tickets
ADD COLUMN session_id UUID REFERENCES sessions (id) ON DELETE SET NULL;

-- 関連するスポンサーを紐づける
ALTER TABLE tickets
ADD COLUMN sponsor_id smallint REFERENCES sponsors (id) ON DELETE SET NULL;

ALTER TABLE tickets
ADD COLUMN stripe_checkout_session_id text;
