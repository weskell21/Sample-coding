create table public.profile_players (
  profile_id uuid not null references public.profiles(id) on delete cascade,
  player_id uuid not null references public.players(id) on delete cascade,
  created_at timestamptz default now(),
  primary key (profile_id, player_id)
);
