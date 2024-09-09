-- https://supabase.com/docs/guides/database/extensions/wrappers/stripe
CREATE EXTENSION if NOT EXISTS wrappers
WITH
  schema extensions;

CREATE FOREIGN DATA WRAPPER stripe_wrapper handler stripe_fdw_handler validator stripe_fdw_validator;

/*
-- Save your Stripe API key in Vault and retrieve the `key_id`
insert into vault.secrets (name, secret)
values (
'stripe',
'YOUR_SECRET'
)
returning key_id;
*/
CREATE SERVER stripe_server FOREIGN data wrapper stripe_wrapper options (
  api_key_id '89fec8a6-bc72-4b89-a8f6-09f4539d7ce5',
  api_key_name 'stripe',
  api_url 'https://api.stripe.com/v1/',
  api_version '2024-06-20'
);

CREATE SCHEMA stripe;

-- https://supabase.com/docs/guides/database/extensions/wrappers/stripe#checkout-sessions
CREATE FOREIGN TABLE stripe.checkout_sessions (id text, customer text, payment_intent text, subscription text, attrs jsonb) server stripe_server options (object 'checkout/sessions', rowid_column 'id');
