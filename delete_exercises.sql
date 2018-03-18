USE codeup_test_db;

SELECT album AS 'Albums Released After 1991', artist AS 'Artist', release_date AS 'Release Date'
FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT album AS 'Disco Albums', artist AS 'Artist' FROM albums WHERE genre = "disco";
DELETE FROM albums WHERE genre = "disco";

SELECT album AS 'Albums By Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';




