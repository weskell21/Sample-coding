select
  players.display_name,
  players.jersey_number,
  count(stats.id) as total_events
from players
left join stats on stats.player_id = players.id
where players.team_id = 'example-team-id'
group by players.id, players.display_name, players.jersey_number
order by total_events desc;
