USE codeup_test_db;

SELECT album AS 'All Albums', sales AS 'Certified Sales' FROM albums;

UPDATE albums SET sales = (sales * 10);

SELECT album AS 'All Albums', sales AS 'Certified Sales' FROM albums;

SELECT album AS 'Albums Released Before 1980', release_date AS 'Release Date'
FROM albums WHERE release_date < 1980;

UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;

SELECT album AS 'Albums Released Before 1980', release_date AS 'Release Date'
FROM albums WHERE release_date < 1980;


SELECT album AS 'Albums Released By Michael Jackson'
FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT album AS 'Albums Released By Michael Jackson'
FROM albums WHERE artist = 'Michael Jackson';