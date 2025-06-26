CREATE TABLE authors (
  id_author INT NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(100),
  PRIMARY KEY (id_author)
);

CREATE TABLE books (
  id_book INT NOT NULL AUTO_INCREMENT,
  book_name VARCHAR(100),
  category VARCHAR(45),
  synopsis TEXT,
  PRIMARY KEY (id_book)
);

CREATE TABLE book_authors (
  id_book INT NOT NULL,
  id_author INT NOT NULL,
  PRIMARY KEY (id_book, id_author),
  FOREIGN KEY (id_book) REFERENCES books(id_book),
  FOREIGN KEY (id_author) REFERENCES authors(id_author)
);

CREATE TABLE users (
  id_user INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(100),
  city VARCHAR(50),
  mail VARCHAR(100),
  PRIMARY KEY (id_user),
  UNIQUE (mail)
);

CREATE TABLE loans (
  id_loan INT NOT NULL AUTO_INCREMENT,
  id_user INT,
  id_book INT,
  loan_date DATETIME,
  return_date DATETIME,
  PRIMARY KEY (id_loan),
  FOREIGN KEY (id_user) REFERENCES users(id_user),
  FOREIGN KEY (id_book) REFERENCES books(id_book)
);
