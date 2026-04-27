alter table public.players enable row level security;

create policy "Team members can view their team's players"
on public.players
for select
using (
  team_id in (
    select team_id
    from public.profiles
    where id = auth.uid()
  )
);
