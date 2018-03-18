USE codeup_test_db;

SELECT 'All Albums' AS 'Info';
SELECT * From albums;

SELECT album AS 'Albums released before 1980' from albums where release_date < 1980;

SELECT album AS 'Albums released by Michael Jackson' from albums where artist = 'Michael Jackson';