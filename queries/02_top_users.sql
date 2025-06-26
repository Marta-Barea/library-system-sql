-- 02_top_users.sql
-- Description:
--   Retrieves the top users based on the number of loans they have made, along with their rank position.
--
-- Tables used:
--   - users
--   - loans
--
-- Columns returned:
--   - user_name: Name of the user
--   - total_loans: Total number of loans made by the user
--   - rank_position: Rank position of the user based on total loans, with ties receiving the same rank
--
-- Insight goal:
--   To identify the top users in terms of loan activity, providing a clear ranking based on the number of loans made.
--
-- SQL query:

SELECT 
  user_name,
  total_loans,
  DENSE_RANK() OVER (ORDER BY total_loans DESC) AS rank_position
FROM (
  SELECT 
    u.user_name,
    COUNT(l.id_user) AS total_loans
  FROM users AS u
  JOIN loans AS l ON u.id_user = l.id_user
  GROUP BY u.user_name
) AS ranked_users;
