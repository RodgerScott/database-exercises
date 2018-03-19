USE bonus_db;

SELECT product, isTrue FROM products;
DELETE FROM products WHERE isTrue = true;
SELECT product, isTrue FROM products;

SELECT product, price FROM products WHERE price < 50;
DELETE FROM products WHERE price < 50;
SELECT product, price FROM products WHERE price < 50;

SELECT * FROM products;
DELETE FROM products;
