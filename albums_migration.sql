USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100) DEFAULT 'NONE',
  name VARCHAR(100) DEFAULT NULL,
  release_date INT UNSIGNED DEFAULT NULL,
  sales FLOAT UNSIGNED DEFAULT NULL,
  genre VARCHAR (25) DEFAULT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR (50) NOT NULL,
  number VARCHAR (15) NOT NULL,
  email VARCHAR (50) NOT NULL,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS pizza_order_table;

CREATE TABLE pizza_order_table (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  phone_number VARCHAR (15) NOT NULL,
  email VARCHAR (50),
  pizza_size CHAR (2),
  total_cost DECIMAL(5,2),
  description TEXT DEFAULT NULL,
  isDelivered BOOLEAN,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);