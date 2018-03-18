USE codeup_test_db;

SELECT album AS 'Pink Floyd Album Names' from albums where artist = 'Pink Floyd';

SELECT release_date AS 'The Year Sgt Pepper Was Released' from albums where album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre Of Nirvana''s Nevermind' from albums where album = 'Nevermind';

SELECT album AS 'Albums released between 1990 and 2000' from albums WHERE release_date BETWEEN 1990 and 1999;

SELECT album AS 'Albums with less than 20 million certified sales' from albums WHERE sales < 20;

SELECT album AS 'Rock Albums' from albums WHERE genre = 'rock';


