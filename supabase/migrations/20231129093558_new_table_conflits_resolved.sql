create table if not exists public.rockets (
  id uuid primary key,
  name text,
  type text,
  active boolean,
  stages integer,
  boosters integer,
  cost_per_launch integer,
  success_rate_pct integer,
  first_flight timestamptz,
  country text,
  company text,
  height jsonb,
  diameter jsonb,
  mass jsonb,
  payload_weights jsonb,
  first_stage jsonb,
  second_stage jsonb,
  engines jsonb,
  landing_legs jsonb,
  flickr_images text[],
  wikipedia text,
  description text,
  new_field text
);

create table if not exists public.launchpads (
  id uuid primary key,
  name text,
  full_name text,
  locality text,
  region text,
  timezone text,
  latitude numeric,
  longitude numeric,
  launch_attempts integer,
  launch_successes integer,
  rockets jsonb,
  launches jsonb,
  status text,
  details text,
  wikipedia text,
  images jsonb,
  new_field text
);

create table if not exists public.rocket_launches (
  id uuid primary key,
  rocket_id uuid references public.rockets(id),
  launchpad_id uuid references public.launchpads(id),
  name text,
  launch_date timestamptz,
  success boolean,
  details text,
  upcoming boolean,
  crew jsonb,
  payloads jsonb,
  links jsonb,
  flight_number integer,
  new_field text
);