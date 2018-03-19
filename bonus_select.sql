USE bonus_db;

SELECT * FROM products WHERE isTrue = true;

SELECT * FROM products WHERE price > 100;

SELECT product, isTrue FROM products WHERE product = 'ps3';

SELECT price AS 'Price of a dog' FROM products WHERE product = 'dog';

SELECT product, isTRUE FROM products WHERE price > 199;

