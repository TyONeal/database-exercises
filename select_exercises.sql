USE codeup_test_db;
SELECT codeup_test_db.albums.name FROM codeup_test_db.albums WHERE artist = 'Pink Floyd';

SELECT codeup_test_db.albums.release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT codeup_test_db.albums.genre FROM albums WHERE name = 'Nevermind';

SELECT codeup_test_db.albums.name FROM albums WHERE release_date BETWEEN  1989 AND 2000;

SELECT codeup_test_db.albums.name FROM albums WHERE SALES < 20.00;

SELECT codeup_test_db.albums.name FROM albums WHERE GENRE = 'Rock';