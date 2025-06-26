-- 06_most_loaned_books.sql
-- Description:
--  Returns the most loaned books along with their total loan counts and ranks them based on the number of loans.
--
-- Tables used:
--   - books: Contains book details 
--   - loans: Contains loan records 
--
-- Columns returned:
--   - book_name: The name of the book
--   - total_loans: The total number of loans for each book
--   - rank_position: The rank of the book based on total loans, with ties receiving the same rank
--
-- Insight goal:
--  To identify the most popular books in the library based on loan frequency, helping to understand reader preferences and trends.
--
-- SQL query:

SELECT
	book_name,
    total_loans,
    DENSE_RANK() OVER(ORDER BY total_loans DESC) AS rank_position
    FROM(
		SELECT
        b.book_name,
        COUNT(l.id_book) AS total_loans
        FROM books AS b
        JOIN loans AS l ON b.id_book = l.id_book
        GROUP BY b.book_name
        ) AS ranked_books;
