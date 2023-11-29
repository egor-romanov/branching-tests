create table if not exists public.launches (
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