-- 06_top_loaned_books.sql
-- Description:
--  Retrieves the top loaned authors based on the number of books they have loaned out.
--
-- Tables used:
--   - authors
--   - book_authors
--   - loans
--
-- Columns returned:
--   - author_name: Name of the author
--   - total_loans: Total number of books loaned by the author
--   - rank_position: Rank of the author based on the number of loans, with the most loaned author ranked first.
--
-- Insight goal:
--  To identify the most popular authors based on the number of books they have loaned out, which can help in understanding reader preferences and trends.
--
-- SQL query:


SELECT 
author_name,
total_loans,
DENSE_RANK() OVER(ORDER BY total_loans DESC) AS rank_position
FROM(
	SELECT
    a.author_name,
    COUNT(l.id_book) AS total_loans
    FROM authors AS a
    JOIN book_authors AS ba
		ON a.id_author = ba.id_author
	JOIN loans AS l
		ON ba.id_book = l.id_book
	GROUP BY author_name
    ) AS ranked_author; 

