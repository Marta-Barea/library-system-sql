-- 08_authors_books_not_loaned.sql
-- Description:
--  Retrieves the authors of books that have not been loaned yet.
--
-- Tables used:
--   - authors
--   - book_authors
--   - loans
--
-- Columns loaned:
--   - author_name: Name of the author
--   - loan_date: The loan date of the book, which will be NULL for books that have not been loaned.
--
-- Insight goal:
--  To identify authors whose books are currently loaned out and not yet loaned, which can help in understanding the circulation of their works and managing inventory.
--
-- SQL query:

SELECT 
  a.author_name,
  l.loan_date
FROM authors AS a
JOIN book_authors AS ba
		ON a.id_author = ba.id_author
	JOIN loans AS l
		ON ba.id_book = l.id_book
WHERE l.loan_date IS NULL;