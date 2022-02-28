INSERT INTO customers (id, name, address, amount)
VALUES (1, 'John', 'Ottawa', 8.5),
    (2, 'Amy', 'Orleans', 9.0),
    (3, 'Peter', 'Gatineau', 6.3);
INSERT INTO artists (name, birthplace, style, dateofbirth)
VALUES ('Caravaggio', 'Milan', 'Baroque', '1571-09-28'),
    ('Smith', 'Ottawa', 'Modern', '1977-12-12'),
    ('Picasso', 'Malaga', 'Cubism', '1881-10-25');
INSERT INTO artworks (title, year, type, price, artist_name)
VALUES ('Blue', 2000, 'Modern', 10000.00, 'Smith'),
    (
        'The Cardsharps',
        1594,
        'Baroque',
        40000.00,
        'Caravaggio'
    );
UPDATE customers
SET amount = 9.8
WHERE address = 'Gatineau';
DELETE FROM customers
WHERE name = 'John';
INSERT INTO customers (id, name, address, amount, rating)
VALUES (4, 'Emre', 'Preston', 20000.00, 5),
    (5, 'Saeid', null, 40000.00, 6);
INSERT INTO artists (name, birthplace, style, dateofbirth, country)
VALUES (
        'Leonardo',
        'Florence',
        'Renaissance',
        '04-15-1452',
        'Italy'
    ),
    (
        'Michelangelo',
        'Arezzo',
        'Renaissance',
        '03-06-1475',
        'Italy'
    ),
    (
        'Josefa',
        'Seville',
        'Baroque',
        '09-09-1630',
        'Spain'
    ),
    (
        'Hans Hofmann',
        'Weisenburg',
        'Modern',
        '02-17-1966',
        'Germany'
    ),
    (
        'John',
        'San Francisco',
        'Modern',
        '02-17-1920',
        'USA'
    );
INSERT INTO artworks (title, year, type, price, artist_name)
VALUES ('Waves', 2000, null, 4000.00, 'Smith'),
    (
        'Three Musicians',
        1921,
        'Modern',
        11000.00,
        'Picasso'
    )


-- Question 1:
SELECT name,birthplace FROM artists;
DECLARE @Space varchar(20)
SELECT @Space = '\n';
SELECT @Space;
-- Question 2:
SELECT title,price FROM artworks WHERE year > 1600;
SELECT @Space;
-- Question 3:
SELECT title,type FROM artworks WHERE year = 2000 OR artist_name = 'Picasso';
SELECT @Space;
-- Question 4:
SELECT name,birthplace FROM artist WHERE EXTRACT(YEAR FROM dateofbirth) < 1930 OR EXTRACT(YEAR FROM dateofbirth) > 1880;
SELECT @Space;
-- Question 5:
SELECT name,country FROM artists WHERE style IN ('Baroque', 'Modern', 'Renaissance');
SELECT @Space;
-- Question 6:
SELECT * FROM artworks ORDER BY title;
SELECT @Space;
--Question 7:
SELECT name,id FROM customers JOIN likeartists ON customers.id = likeartists.customer_id WHERE artist_name = 'Picasso';
SELECT @Space;
-- Question 8:
SELECT name FROM customers JOIN likedartists ON customers.id = likeartists.customer_id JOIN artists ON artists.name = likeartists.artist_name WHERE artists.style = 'Renaissance' AND
(artists JOIN artworks ON artists.name = artworks.artist_name WHERE price > 30000);


