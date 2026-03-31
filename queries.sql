-- queries.sql
-- Practice queries for Intro to SQL
-- Run against films_db: psql films_db (Mac) or sudo -u postgres psql films_db (WSL)

----------------------------------------
-- SELECT
----------------------------------------

-- Get all films
-- retrieve all data from the films table
SELECT * FROM films;

-- Get only title and director
-- retrieve the title and director from the films table
SELECT title, director FROM films;

-- Get all sci-fi films
-- retrieve all sci-fi films records
SELECT * FROM films WHERE genre = 'sci-fi';

-- Films released after 2015
-- retrieve the films records released after the year 2015
SELECT * FROM films WHERE year > 2015;

-- Films whose title starts with 'The'
-- get all film records that start with 'The'
SELECT * FROM films WHERE title LIKE 'The%';

-- Horror or thriller films
-- get film records whose genere is horror or thriller
SELECT * FROM films WHERE genre = 'horror' OR genre = 'thriller';

-- Sci-fi films released after 2010
-- get film records whose genre is sci-fi and was releaser after 2010
SELECT * FROM films WHERE genre = 'sci-fi' AND year > 2010;

-- All films newest to oldest
-- get films from newest to oldest sorted by year
SELECT * FROM films ORDER BY year DESC;

-- Top 3 most recent films
-- get the 3 most recent films sorted by year
SELECT * FROM films ORDER BY year DESC LIMIT 3;

-- All films alphabetically by title
-- get film records sorted alphabetically
SELECT * FROM films ORDER BY title ASC;

----------------------------------------
-- INSERT
----------------------------------------

-- Add a single film
-- insert values (film) to db
INSERT INTO films (title, director, year, genre)
VALUES ('Dune', 'Denis Villeneuve', 2021, 'sci-fi');

-- Add multiple films at once
-- insert two films to the db
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
-- update Moonlight's genre to drama
UPDATE films
SET genre = 'drama'
WHERE title = 'Moonlight';

-- Update multiple columns by ID
-- update the title and year by id
UPDATE films
SET title = 'Everything Everywhere All at Once', year = 2022
WHERE film_id = 6;

-- Verify the update
SELECT * FROM films WHERE film_id = 6;

----------------------------------------
-- DELETE
----------------------------------------

-- Delete a specific film by ID
-- delete the film with id of 7
DELETE FROM films WHERE film_id = 7;

-- Verify the delete
SELECT * FROM films ORDER BY film_id;
