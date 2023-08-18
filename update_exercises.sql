SELECT codeup_test_db.albums.name FROM codeup_test_db.albums;
UPDATE codeup_test_db.albums
SET codeup_test_db.albums.sales = sales * 10;
SELECT 'This is all The Albums with sales data multiplied by 10:' AS 'ALBUM DATA';
SELECT codeup_test_db.albums.* FROM albums;

SELECT codeup_test_db.albums.name FROM albums WHERE release_date < 1980;
UPDATE codeup_test_db.albums
SET codeup_test_db.albums.release_date = release_date - 100 WHERE release_date < 1980;
SELECT 'This is every album released before 1980 moved to the 1800s:' AS 'ALBUM RELEASE DATA';
SELECT codeup_test_db.albums.* FROM albums;

SELECT codeup_test_db.albums.name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET codeup_test_db.albums.artist = 'Samuel Jackson' WHERE artist = 'Michael Jackson';
SELECT 'This is every Michael Jackson album changed to Samuel Jackson:' AS 'ARTIST NAME DATA';
SELECT codeup_test_db.albums.* FROM albums;

