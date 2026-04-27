create table public.players (
  id uuid primary key default gen_random_uuid(),
  team_id uuid not null references public.teams(id) on delete cascade,
  display_name text not null,
  jersey_number int,
  created_at timestamptz default now()
);
