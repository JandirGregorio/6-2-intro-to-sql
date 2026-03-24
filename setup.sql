DROP DATABASE IF EXISTS films_db;
CREATE DATABASE films_db;
\c films_db

CREATE TABLE films (
  film_id   SERIAL PRIMARY KEY,
  title     TEXT   NOT NULL,
  director  TEXT   NOT NULL,
  year      INT    NOT NULL,
  genre     TEXT   NOT NULL
);

INSERT INTO films (title, director, year, genre) VALUES
  ('The Matrix',                          'Lana Wachowski',    1999, 'sci-fi'),
  ('Inception',                           'Christopher Nolan', 2010, 'sci-fi'),
  ('Get Out',                             'Jordan Peele',      2017, 'horror'),
  ('Parasite',                            'Bong Joon-ho',      2019, 'thriller'),
  ('Moonlight',                           'Barry Jenkins',     2016, 'drama'),
  ('Everything Everywhere All at Once',   'Daniel Kwan',       2022, 'sci-fi'),
  ('Black Panther',                       'Ryan Coogler',      2018, 'action');
