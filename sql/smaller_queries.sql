SELECT * FROM ipl_data.ipl_ball_by_ball WHERE isWicketDelivery=1  LIMIT 100; 
-- ALTER TABLE ipl_data.ipl_ball_by_ball
-- RENAME COLUMN non_boundary TO boundary;
-- SELECT DISTINCT extra_type FROM ipl_data.ipl_ball_by_ball;
-- SELECT * FROM ipl_data.ipl_ball_by_ball  WHERE extras_run>0 LIMIT 100; 
SELECT DISTINCT kind FROM  ipl_data.ipl_ball_by_ball ;
SELECT DISTINCT extra_type FROM ipl_data.ipl_ball_by_ball ;
SELECT * FROM ipl_data.bowler_stats ORDER BY overs DESC;



SELECT total_runs, COUNT(1) nulls_count
FROM `ipl-data-analysis-465107.ipl_data.player_stats`  t,
UNNEST(REGEXP_EXTRACT_ALL(TO_JSON_STRING(t), r'"(\w+)":null')) total_runs
GROUP BY total_runs;