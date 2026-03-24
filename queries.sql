-- queries.sql
-- Practice queries for Intro to SQL
-- Run against films_db: psql films_db (Mac) or sudo -u postgres psql films_db (WSL)

----------------------------------------
-- SELECT
----------------------------------------

-- Get all films
SELECT * FROM films;

-- Get only title and director
SELECT title, director FROM films;

-- Get all sci-fi films
SELECT * FROM films WHERE genre = 'sci-fi';

-- Films released after 2015
SELECT * FROM films WHERE year > 2015;

-- Films whose title starts with 'The'
SELECT * FROM films WHERE title LIKE 'The%';

-- Horror or thriller films
SELECT * FROM films WHERE genre = 'horror' OR genre = 'thriller';

-- Sci-fi films released after 2010
SELECT * FROM films WHERE genre = 'sci-fi' AND year > 2010;

-- All films newest to oldest
SELECT * FROM films ORDER BY year DESC;

-- Top 3 most recent films
SELECT * FROM films ORDER BY year DESC LIMIT 3;

-- All films alphabetically by title
SELECT * FROM films ORDER BY title ASC;

----------------------------------------
-- INSERT
----------------------------------------

-- Add a single film
INSERT INTO films (title, director, year, genre)
VALUES ('Dune', 'Denis Villeneuve', 2021, 'sci-fi');

-- Add multiple films at once
INSERT INTO films (title, director, year, genre)
VALUES
  ('Arrival',  'Denis Villeneuve', 2016, 'sci-fi'),
  ('Us',       'Jordan Peele',     2019, 'horror');

-- Verify the inserts
SELECT * FROM films ORDER BY film_id;

----------------------------------------
-- UPDATE
----------------------------------------

-- Update a genre by title
UPDATE films
SET genre = 'drama'
WHERE title = 'Moonlight';

-- Update multiple columns by ID
UPDATE films
SET title = 'Everything Everywhere All at Once', year = 2022
WHERE film_id = 6;

-- Verify the update
SELECT * FROM films WHERE film_id = 6;

----------------------------------------
-- DELETE
----------------------------------------

-- Delete a specific film by ID
DELETE FROM films WHERE film_id = 7;

-- Verify the delete
SELECT * FROM films ORDER BY film_id;
