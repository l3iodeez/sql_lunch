# frozen_string_literal: true

require 'sqlite3'

# Open a database
db = SQLite3::Database.new 'lunch.db'

# Create a database
db.execute <<-SQL
  create table authors (
    id int,
    name varchar(30)
  );

  create table books (
    id int,
    author_id int,
    title vaselectrchar(30),
    clicks int
  );

  create table posts (
    id int,
    author_id int,
    text varchar(30)
  );

  INSERT INTO authors (id, name) VALUES (1, 'Bob');
  INSERT INTO authors (id, name) VALUES (2, 'Alice');

  INSERT INTO books (id, author_id, title, clicks) VALUES (1, 1, 'Cats', 5);
  INSERT INTO books (id, author_id, title, clicks) VALUES (2, 1,'Dogs', 10);

  INSERT INTO posts (id, author_id, text) VALUES (1, 1, 'Boo');
  INSERT INTO posts (id, author_id, text) VALUES (2, 1,'Yay');

  SELECT
      sum(books.clicks)
  FROM
      authors
  LEFT JOIN
      books on books.author_id = authors.id
  LEFT JOIN
      posts on posts.author_id = authors.id
  WHERE
      authors.id = 1;

SQL
