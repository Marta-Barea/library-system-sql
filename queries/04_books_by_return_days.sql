-- 04_books_by_return_days.sql
-- Description:
--  Retrieves the names of books along with the total number of days they were returned late.
--
-- Tables used:
--   - books    
--   - loans
--
-- Columns returned:
--   -  book_name: Name of the book
--   -  total_return_days: Total number of days the book was returned late, calculated as the difference between the return date and the loan date.
--
-- Insight goal:
--    To analyze the return behavior of books, specifically focusing on how many days they were returned late.
--
-- SQL query:

SELECT 
  book_name,
  total_return_days
FROM (
  SELECT 
    b.book_name,
    DATEDIFF(l.return_date, l.loan_date) AS total_return_days
  FROM books AS b
  JOIN loans AS l ON b.id_book = l.id_book
) AS return_period
ORDER BY total_return_days DESC;
