USE albums_db;

SHOW TABLES; #show all tables in a DB

DESCRIBE albums; #data on the data structure of the albums table

SHOW CREATE TABLE albums; #show commands needed to create table

SELECT * FROM albums;

SELECT * FROM albums
WHERE artist = 'Pink Floyd';

SELECT name, release_date FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT name, genre from albums
WHERE name = 'Nevermind';

SELECT * FROM albums
WHERE release_date BETWEEN 1989 AND 1999;

SELECT name, sales FROM albums
WHERE sales > 20.0;

SELECT name, genre FROM albums
WHERE genre = 'Rock';

SELECT name, genre FROM albums
WHERE genre LIKE '%Rock%';











