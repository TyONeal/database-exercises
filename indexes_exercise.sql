USE employees;

DESCRIBE employees.titles;

SHOW TABLES;

DESCRIBE employees.salaries;

USE codeup_test_db;

SHOW TABLES;

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (artist, name);

DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (name);

DESCRIBE albums;

SELECT * FROM albums;

INSERT INTO codeup_test_db.albums (codeup_test_db.albums.artist, codeup_test_db.albums.name, codeup_test_db.albums.release_date, codeup_test_db.albums.genre, codeup_test_db.albums.sales) VALUES
    ('Michael Jackson', 'Thriller', 1982, 'Pop/Rock/R&B', 47.3);


