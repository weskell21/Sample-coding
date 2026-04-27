create table public.teams (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  join_code text unique not null,
  created_at timestamptz default now()
);
