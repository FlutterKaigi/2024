CREATE SCHEMA admin;

GRANT usage ON schema admin TO service_role;

GRANT ALL ON ALL tables IN schema admin TO service_role;

GRANT ALL ON ALL routines IN schema admin TO service_role;

GRANT ALL ON ALL sequences IN schema admin TO service_role;

ALTER DEFAULT PRIVILEGES FOR role postgres IN schema admin
GRANT ALL ON tables TO service_role;

ALTER DEFAULT PRIVILEGES FOR role postgres IN schema admin
GRANT ALL ON routines TO service_role;

ALTER DEFAULT PRIVILEGES FOR role postgres IN schema admin
GRANT ALL ON sequences TO service_role;

CREATE TYPE admin.coupon_type AS enum(
  'discount', -- 通常の割引クーポン
  'sponsor_ticket', -- スポンサー招待チケット
  'speaker_ticket', -- スピーカー招待チケット
  'sponsor_speaker_ticket' -- スポンサースピーカー招待チケット
);

-- クーポンを管理するテーブル
CREATE TABLE admin.coupons (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
  code text NOT NULL UNIQUE,
  type admin.coupon_type NOT NULL,
  sponsor_id smallint REFERENCES public.sponsors (id),
  session_id UUID REFERENCES public.sessions (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);
