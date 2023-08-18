SELECT codeup_test_db.albums.name FROM codeup_test_db.albums;
UPDATE codeup_test_db.albums
SET codeup_test_db.albums.sales = sales * 10;
SELECT codeup_test_db.albums.* FROM albums;

SELECT codeup_test_db.albums.name FROM albums WHERE release_date < 1980;
UPDATE codeup_test_db.albums
SET codeup_test_db.albums.release_date = release_date - 100 WHERE release_date < 1980;
SELECT codeup_test_db.albums.* FROM albums;

SELECT codeup_test_db.albums.name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET codeup_test_db.albums.artist = 'Samuel Jackson' WHERE artist = 'Michael Jackson';
SELECT codeup_test_db.albums.* FROM albums;

