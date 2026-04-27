create or replace function public.get_team_by_join_code(input_join_code text)
returns table (
  id uuid,
  name text,
  join_code text
)
language sql
security definer
as $$
  select teams.id, teams.name, teams.join_code
  from public.teams
  where teams.join_code = input_join_code;
$$;
