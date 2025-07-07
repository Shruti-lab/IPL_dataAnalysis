CREATE OR REPLACE TABLE ipl_data.player_stats AS 
SELECT
  batter AS player,
  COUNT(DISTINCT ID) AS matches_played,
  SUM(batsman_run) AS total_runs,
  COUNTIF(batsman_run = 4 AND  extra_type = 'NA') AS fours,
  COUNTIF(batsman_run = 6 AND  extra_type = 'NA') AS sixes,
  COUNTIF(batter=player_out) AS dismissals,
  COUNT(extras_run>0 AND extra_type != 'wides') AS balls_faced,
FROM
  ipl_data.ipl_ball_by_ball
GROUP BY
  batter;