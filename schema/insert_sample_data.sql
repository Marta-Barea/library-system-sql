INSERT INTO authors (id_author, author_name) VALUES
  (1, 'Matt Haig'),
  (2, 'Delia Owens'),
  (3, 'Tara Westover'),
  (4, 'Alex Michaelides'),
  (5, 'Paulo Coelho'),
  (6, 'Madeline Miller');

INSERT INTO books (id_book, book_name, category, synopsis) VALUES
  (1, 'The Midnight Library', 'Fiction', 'A woman finds herself in a library between life and death.'),
  (2, 'Where the Crawdads Sing', 'Mystery', 'A murder mystery in the marshlands of North Carolina.'),
  (3, 'Educated', 'Memoir', 'A woman escapes her survivalist upbringing to pursue education.'),
  (4, 'The Silent Patient', 'Thriller', 'A woman stops speaking after a shocking act of violence.'),
  (5, 'The Alchemist', 'Philosophical', 'A shepherd travels in search of treasure and meaning.'),
  (6, 'Circe', 'Fantasy', 'The story of the mythical witch reimagined with depth.');

INSERT INTO book_authors (id_book, id_author) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6);

INSERT INTO users (id_user, user_name, city, mail) VALUES
  (1, 'Emma Salas', 'Madrid', 'emma.salas@example.com'),
  (2, 'Leo Ortega', 'Seville', 'leo.ortega@example.com'),
  (3, 'Clara Vila', 'Valencia', 'clara.vila@example.com'),
  (4, 'Álvaro Ríos', 'Bilbao', 'alvaro.rios@example.com');

INSERT INTO loans (id_loan, id_user, id_book, loan_date, return_date) VALUES
  (1, 1, 1, '2024-06-01 00:00:00', '2024-06-15 00:00:00'),
  (2, 2, 2, '2024-06-10 00:00:00', '2024-06-24 00:00:00'),
  (3, 1, 3, '2024-06-12 00:00:00', NULL),
  (4, 3, 4, '2024-06-14 00:00:00', NULL),
  (5, 4, 5, '2024-06-15 00:00:00', '2024-06-22 00:00:00'),
  (6, 3, 6, '2024-06-18 00:00:00', '2024-06-25 00:00:00'),
  (7, 2, 1, '2024-06-20 00:00:00', NULL);
