# SQL Project - Training Center Database

This repository contains a SQL project for managing a fictional **library system**, built with MySQL. It is designed to explore complex querying using realistic book-related data.

---

# How to use

1. Clone the repository

```bash
git clone https://github.com/yourusername/library-system-sql.git
cd library-system-sql
```

2. Set your credentials in .env

Create a file named `.env` with your database credentials:

```dotenv
MYSQL_ROOT_PASSWORD=your_password
MYSQL_PORT=mysql_port_here
MYSQL_HOST=127.0.0.1
MYSQL_DATABASE=training_centers
MYSQL_USER=your_user
MYSQL_PASSWORD=your_password
```
3. Start de Project

Make sure [Docker](https://www.docker.com) is running, then run:

```bash
docker-compose up -d
make all-insert

```
This will:

- Launch a MySQL 8.0 container
- Create the database
- Generate the schema
- Insert fictional data
- Run all queries in `queries/`
- Export results as .csv files in `results/`

# Requirements

- [Docker](https://www.docker.com/products/docker-desktop) 
- [Docker Compose](https://docs.docker.com/compose/) 
- `make`(preinstalled on macOS/Linux)


# Project Structure

```
library-system-sql/
├── .env
├── .gitignore
├── docker-compose.yml
├── Makefile
├── README.md
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   └── ...
├── queries/
│   ├── 01_complete_catalogue.sql
│   ├── 02_top_users.sql
│   ├── 03_top_cities.sql
│   ├── ...
└── results/
    ├── 01_complete_catalogue.csv
    ├── 02_top_users.csv
    ├── 03_top_cities.csv
    └── ...

```
# Queries Overview

| Query                                   | Description                                                    |
|----------------------------------------|----------------------------------------------------------------|
| `01_complete_catalogue.sql`            | Displays full catalogue of books with their corresponding authors |
| `02_top_users.sql`                     | Ranks users by total number of loans                           |
| `03_top_cities.sql`                    | Ranks cities based on loan activity                            |
| `04_books_by_return_days.sql`          | Calculates how long each book took to be returned              |
| `05_books_not_returned.sql`            | Lists books currently not returned                             |
| `06_most_loaned_books.sql`             | Ranks books by number of loans                                 |
| `07_top_loaned_authors.sql`            | Ranks authors based on total number of loans                   |
| `08_authors_books_not_loaned.sql`      | Lists authors of books that are still on loan                  |
| `09_book_loans_with_first_last.sql`    | Shows first and last loan dates per book with loan count rank  |


# Notes 

All data is fictional and anonymized.
