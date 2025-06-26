-- 01_complete_catalogue.sql
-- Description:
--   Retrieves all available books from the catalogue along with their authors and categories. 
--
-- Tables used:
--   - books
--   - book_authors
--   - authors
--
-- Columns returned:
--   - book_name: Name of the course
--   - category: Category/topic of the course
--   - author_name: Course price in euros
--
-- Insight goal:
--   To get a complete list of books with their respective authors and categories, sorted by book name in descending order.
--
-- SQL query:

SELECT 
	b.book_name, 
    b.category,
    a.author_name
FROM books AS b
JOIN book_authors AS ba
	ON b.id_book = ba.id_book
JOIN authors AS a
	ON ba.id_author = a.id_author
ORDER BY b.book_name DESC; 