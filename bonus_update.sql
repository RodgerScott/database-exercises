USE bonus_db;

SELECT product, price FROM products WHERE id < 4;
UPDATE products SET price = 0 WHERE id < 4;
SELECT product, price FROM products WHERE id < 4;

SELECT product, isTrue FROM products WHERE product = 'ps3';
UPDATE products SET isTRUE = false, product = 'ps4' WHERE product = 'ps3';
SELECT product, isTrue FROM products WHERE product = 'ps4';

SELECT product, isTrue FROM products;
UPDATE products SET isTRUE = false;
SELECT product, isTrue FROM products;

UPDATE products SET isTrue = true WHERE price > 200;
SELECT product, isTrue, price FROM products;