USE codeup_test_db;


SELECT album AS 'Pink Floyd Album Names'
From albums where artist = 'Pink Floyd';

SELECT album AS 'Album', release_date AS 'Release Date'
from albums where album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre of Nirvana''s Nevermind'
from albums where album = 'Nevermind';

SELECT album AS 'Albums release between 1990 and 2000', artist AS 'Artist', release_date AS 'Release date'
from albums WHERE release_date BETWEEN 1990 and 1999;

SELECT album AS 'Albums with under 20 million certified sales', sales AS 'Certified Sales'
from albums WHERE sales < 20;

SELECT album AS 'Rock Genre Albums', artist AS 'Artist'
from albums WHERE genre = 'rock';
