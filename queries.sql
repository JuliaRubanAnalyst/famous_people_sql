
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

