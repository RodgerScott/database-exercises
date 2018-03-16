USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100),
  album VARCHAR(100),
  release_date INT UNSIGNED DEFAULT NULL,
  sales DECIMAL(10,2),
  genre VARCHAR (50),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR (50),
  number VARCHAR (15),
  email VARCHAR (50),
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS pizza_order_table;

CREATE TABLE pizza_order_table (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  phone_number VARCHAR (15),
  email VARCHAR (50),
  pizza_size CHAR (2),
  total_cost DECIMAL(5,2),
  description TEXT,
  isDelivered BOOLEAN,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);