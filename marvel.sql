DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Miguel Almeida');
INSERT INTO people (name) VALUES ('Callum Bentley');
INSERT INTO people (name) VALUES ('Zackary Coleman');
INSERT INTO people (name) VALUES ('Daniel Colyer');
INSERT INTO people (name) VALUES ('Adm Conway');
INSERT INTO people (name) VALUES ('Peter Crowther');
INSERT INTO people (name) VALUES ('Marta Dabrowka');
INSERT INTO people (name) VALUES ('Graeme Doran');
INSERT INTO people (name) VALUES ('John Duncan');
INSERT INTO people (name) VALUES ('Kayla Fowler');
INSERT INTO people (name) VALUES ('Diana Prince');
INSERT INTO people (name) VALUES ('Diana Prince');
INSERT INTO people (name) VALUES ('Chris Marshall');
INSERT INTO people (name) VALUES ('Aline Mokfa');
INSERT INTO people (name) VALUES ('Joao Nequinha');
INSERT INTO people (name) VALUES ('Yoni Satat');
INSERT INTO people (name) VALUES ('Kynan Song');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('Hamish Stewart');
INSERT INTO people (name) VALUES ('Huascar Suave');
INSERT INTO people (name) VALUES ('Rob Williams');
INSERT INTO people (name) VALUES ('Laurence Woodward');
INSERT INTO people (name) VALUES ('Andre Zyczkowski');



INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');

-- 1. Return ALL the data in the 'movies' table.
SELECT * FROM movies;

-- 2. Return ONLY the name column from the 'people' table
-- SELECT name FROM people;
-- 3.Oops! Someone at CodeClan spelled Adam's name wrong! Change it to reflect
--the proper spelling (change 'Adm Conway' to 'Adam Conway').
UPDATE people SET name = 'Adam Conway' WHERE name = 'Adm Conway';
SELECT * FROM people;
-- 4. Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE id = 22;
-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete
-- the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
-- 6. Create a new entry in the 'people' table with the name of one of the
--instructors.
INSERT INTO people (name) VALUES ('Darren Breen');

-- 7. Craig Morton, has decided to hijack our movie evening, Remove him from the
-- table of people.
DELETE FROM people WHERE name = 'Craig Morton';
-- 8. Somehow the list of people includes two people named 'Diana Prince'. Change
-- these entries to the proper names ('Tony Stark' and 'David Banner')
UPDATE people SET name = 'Tony Stark' WHERE id = 11;
UPDATE people SET name = 'David Banner' WHERE id = 12;
-- 9. The cinema has just heard that they will be holding an exclusive midnight
-- showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies'
-- table to reflect this.
UPDATE movies SET show_time = '00:00' WHERE title = 'Guardians of the Galaxy 2';
-- 10. The cinema would also like to make the Guardian movies a back to back
-- feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
--
-- ## Extension
--
-- 1. Research how to delete multiple entries from your table in a single command.
DELETE FROM people WHERE id IN (1, 2, 3);
