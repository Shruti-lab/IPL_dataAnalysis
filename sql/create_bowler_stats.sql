CREATE OR REPLACE TABLE ipl_data.bowler_stats AS 
SELECT
  bowler AS bowler,
  COUNT(DISTINCT ID) AS matches_played,
  SUM(batsman_run) AS total_runs,
  ROUND(COUNT(*)/6,1) AS overs,
  COUNTIF(batsman_run = 4 AND  extra_type = 'NA') AS fours,
  COUNTIF(batsman_run = 6 AND  extra_type = 'NA') AS sixes,
  COUNTIF(kind='bowled' OR kind='caught and bowled') AS wickets,
  COUNT(extra_type='wides' OR extra_type='noballs') AS extras_given,
FROM
  ipl_data.ipl_ball_by_ball
GROUP BY
  bowler;