-- 03_top_cities.sql
-- Description:
--  Retrieves the top cities based on the number of loans made, along with their rank position.
--
-- Tables used:
--   - cities
--   - loans
--
-- Columns returned:
--   -  city: Name of the city
--   -  total_loans: Total number of loans made in that city
--   -  rank_position: Rank position of the city based on total loans, with ties receiving the same rank
--
-- Insight goal:
--    To identify the top cities in terms of loan activity, providing a clear ranking based on the number of loans made.
--
-- SQL query:

SELECT 
city, 
total_loans,
DENSE_RANK() OVER(ORDER BY total_loans DESC) AS rank_position
FROM(
	SELECT
    u.city,
    COUNT(l.id_user) AS total_loans
    FROM users AS u
    JOIN loans AS l ON u.id_user = l.id_user
    GROUP BY u.city
    ) AS ranked_cities; 
