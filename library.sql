
CREATE DATABASE library;

USE library;

CREATE TABLE library_books (
    id INT,
    b_name VARCHAR(30)
);

/* ADDING 4 COLUMNS TO EXISTING TABLE */
ALTER TABLE library_books 
ADD COLUMN publisher VARCHAR(30), 
ADD COLUMN sale_count INT, 
ADD COLUMN publish_year INT, 
ADD COLUMN genre VARCHAR(20);

/* REMOVE 2 COLUMNS */
ALTER TABLE library_books 
DROP COLUMN publisher, 
DROP COLUMN sale_count;

ALTER TABLE library_books 
RENAME COLUMN b_name TO book_title, 
RENAME COLUMN publish_year TO release_year, 
RENAME COLUMN sale_count TO total_sales;

ALTER TABLE library_books 
MODIFY COLUMN id BIGINT, 
MODIFY COLUMN total_sales BIGINT, 
MODIFY COLUMN genre VARCHAR(50);

RENAME TABLE library_books TO book_inventory;
