create table if not exists new_table (
  id uuid primary key,
  vec vector,
  metadata jsonb,
  user_id uuid references auth.users(id),
  node uuid not null default gen_random_uuid()
);
