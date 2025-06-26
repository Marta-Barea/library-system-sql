-- 05_books_not_returned.sql
-- Description:
--  Retrieves the names of books that have not been returned yet.
--
-- Tables used:
--   - books
--   - loans
--
-- Columns returned:
--   - book_name: Name of the book
--   - return_date: The date when the book was supposed to be returned, which is NULL for books not returned.
--
-- Insight goal:
--  To identify books that are currently checked out and have not been returned, allowing for better tracking of loaned items.
--
-- SQL query:

SELECT 
  b.book_name,
  l.return_date
FROM books AS b
JOIN loans AS l
	ON b.id_book = l.id_book
WHERE l.return_date IS NULL;

