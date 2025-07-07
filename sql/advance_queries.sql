-- Highest run scorers. Not an indicative of performance directly as it also incorporates number of matches played
SELECT * FROM ipl_data.player_stats ORDER BY total_runs DESC LIMIT 1000;

-- Super strikers who played more than 100 matches. This order list will vary based on condition of number of matches played.
SELECT player,
ROUND(SAFE_DIVIDE(total_runs, dismissals), 2) AS batting_average,
ROUND(SAFE_DIVIDE(total_runs * 100, balls_faced), 2) AS strike_rate,
FROM  ipl_data.player_stats 
WHERE matches_played > 100
ORDER BY strike_rate DESC
LIMIT 20;


-- Calculating boundary percentage for players playing more than 50 matches.
-- Boundary percentage => percentage of runs scored from boundaries (fours and sixes).
-- Why: Indicates attacking ability and impact.
SELECT player, total_runs, 
(fours*4 + sixes*6 ) AS boundary_runs,
ROUND((fours*4 + sixes*6)*100 / total_runs, 2) AS boundary_percentage,
FROM ipl_data.player_stats
WHERE matches_played > 50
ORDER BY boundary_percentage DESC
LIMIT 20;


-- Calculating bowling economy rate:- Runs conceded per over bowled.
-- Why: Measures how restrictive a bowler is.
SELECT bowler, matches_played, total_runs AS runs_conceded,overs, 
ROUND(total_runs / overs,2) AS economy_rate,
FROM ipl_data.bowler_stats
WHERE matches_played > 50
ORDER BY economy_rate ASC
LIMIT 20;



-- This query lists top all-rounders (min 20 matches as batsman and bowler) ranked by strike rate and economy rate.
-- Select top all-round performers: high batting strike rate & low bowling economy.
-- Filters for players with high batting strike rate (>120) and low bowling economy (<8).
SELECT
  p.player,
  p.total_runs AS total_runs_scored,
  ROUND(SAFE_DIVIDE(p.total_runs * 100, p.balls_faced), 2) AS strike_rate,
  b.wickets,
  ROUND(SAFE_DIVIDE(b.total_runs, b.overs), 2) AS economy_rate
FROM
  ipl_data.player_stats AS p
JOIN
  ipl_data.bowler_stats AS b
ON
  p.player = b.bowler
WHERE
  p.matches_played > 20
  AND b.matches_played > 20
  AND SAFE_DIVIDE(p.total_runs * 100, p.balls_faced) > 120
  AND SAFE_DIVIDE(b.total_runs, b.overs) < 8
ORDER BY
  strike_rate DESC,
  economy_rate ASC
LIMIT 20;