
CREATE TABLE movie_stars (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);

INSERT INTO movie_stars (name, age) VALUES ('John Doe', 35);
INSERT INTO movie_stars (name, age) VALUES ('Jane Smith', 28);
INSERT INTO movie_stars (name, age) VALUES ('Emily Johnson', 40);
INSERT INTO movie_stars (name, age) VALUES ('Michael Brown', 45);
INSERT INTO movie_stars (name, age) VALUES ('Linda White', 38);
INSERT INTO movie_stars (name, age) VALUES ('David Harris', 30);
INSERT INTO movie_stars (name, age) VALUES ('Karen Martin', 50);
INSERT INTO movie_stars (name, age) VALUES ('Chris Garcia', 27);
INSERT INTO movie_stars (name, age) VALUES ('Patricia Robinson', 32);
INSERT INTO movie_stars (name, age) VALUES ('Robert Walker', 29);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year INTEGER
);

INSERT INTO movies (title, year) VALUES ('The Unseen Journey', 2020);
INSERT INTO movies (title, year) VALUES ('Beyond the Horizon', 2018);
INSERT INTO movies (title, year) VALUES ('Mystery of the Forest', 2021);
INSERT INTO movies (title, year) VALUES ('Night in the City', 2019);
INSERT INTO movies (title, year) VALUES ('Lost in Dreams', 2022);
INSERT INTO movies (title, year) VALUES ('Echoes of the Past', 2017);
INSERT INTO movies (title, year) VALUES ('Chasing Shadows', 2023);
INSERT INTO movies (title, year) VALUES ('Secrets of the Deep', 2020);
INSERT INTO movies (title, year) VALUES ('Whispers in the Dark', 2021);
INSERT INTO movies (title, year) VALUES ('Skyward Bound', 2018);

CREATE TABLE star_movies (
    star_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY (star_id) REFERENCES movie_stars(id),
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

INSERT INTO star_movies (star_id, movie_id) VALUES (1, 1);
INSERT INTO star_movies (star_id, movie_id) VALUES (2, 2);
INSERT INTO star_movies (star_id, movie_id) VALUES (3, 3);
INSERT INTO star_movies (star_id, movie_id) VALUES (4, 4);
INSERT INTO star_movies (star_id, movie_id) VALUES (5, 5);
INSERT INTO star_movies (star_id, movie_id) VALUES (1, 6);
INSERT INTO star_movies (star_id, movie_id) VALUES (2, 7);
INSERT INTO star_movies (star_id, movie_id) VALUES (3, 8);
INSERT INTO star_movies (star_id, movie_id) VALUES (4, 9);
INSERT INTO star_movies (star_id, movie_id) VALUES (5, 10);

CREATE TABLE marriages (
    star1_id INTEGER,
    star2_id INTEGER,
    FOREIGN KEY (star1_id) REFERENCES movie_stars(id),
    FOREIGN KEY (star2_id) REFERENCES movie_stars(id)
);

INSERT INTO marriages (star1_id, star2_id) VALUES (1, 2);
INSERT INTO marriages (star1_id, star2_id) VALUES (3, 4);
INSERT INTO marriages (star1_id, star2_id) VALUES (5, 6);
INSERT INTO marriages (star1_id, star2_id) VALUES (7, 8);
INSERT INTO marriages (star1_id, star2_id) VALUES (9, 10);
INSERT INTO marriages (star1_id, star2_id) VALUES (2, 3);
INSERT INTO marriages (star1_id, star2_id) VALUES (4, 5);
INSERT INTO marriages (star1_id, star2_id) VALUES (6, 7);
INSERT INTO marriages (star1_id, star2_id) VALUES (8, 9);
INSERT INTO marriages (star1_id, star2_id) VALUES (10, 1);

SELECT m.title FROM movies m
JOIN star_movies sm ON m.id = sm.movie_id
WHERE sm.star_id = (SELECT id FROM movie_stars WHERE name = 'Jane Smith');

SELECT 
  CASE 
    WHEN EXISTS (SELECT * FROM marriages WHERE star1_id = (SELECT id FROM movie_stars WHERE name = 'Patricia Robinson') AND star2_id = (SELECT id FROM movie_stars WHERE name = 'Robert Walker'))
    THEN 'Yes'
    ELSE 'No'
  END AS Married;
