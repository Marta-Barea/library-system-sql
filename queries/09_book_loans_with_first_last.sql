-- 09_book_loans_with_first_last.sql
-- Description:
--  Retrieves the books that have been loaned out, along with the first and last loan dates for each book.
--
-- Tables used:
--   - books
--   - loans  
--
-- Columns loaned:
--   - book_name: Name of the book
--   - total_loans: Total number of times the book has been loaned out
--   - first_loan_date: The date when the book was first loaned out
--   - last_loan_date: The date when the book was last loaned out
--   - rank_position: Rank of the book based on the number of loans, with the most loaned book ranked first.
--
-- Insight goal:
--  To identify the most popular books based on the number of loans, along with their first and last loan dates, which can help in understanding reader preferences and managing inventory.
--
-- SQL query:

SELECT 
  b.book_name,
  COUNT(l.id_loan) AS total_loans,
  MIN(l.loan_date) AS first_loan_date,
  MAX(l.loan_date) AS last_loan_date,
  DENSE_RANK() OVER(ORDER BY COUNT(l.id_loan) DESC) AS rank_position
FROM books AS b
JOIN loans AS l ON b.id_book = l.id_book
GROUP BY b.book_name;
