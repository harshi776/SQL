-- Create the book_details table
CREATE TABLE book_details (
    Book_id INT,
    Title VARCHAR(100),
    Author VARCHAR(50),
    Genre VARCHAR(50),
    Year_Published INT,
    ISBN VARCHAR(20),
    Pages INT,
    Publisher VARCHAR(50),
    Language VARCHAR(50)
);

-- Insert sample data into book_details
INSERT INTO book_details VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, '978-0-06-112008-4', 281, 'J.B. Lippincott & Co.', 'English'),
(2, '1984', 'George Orwell', 'Dystopian', 1949, '978-0-452-28423-4', 328, 'Secker & Warburg', 'English'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, '978-0-7432-7356-5', 180, 'Charles Scribner\'s Sons', 'English'),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, '978-0-19-953556-9', 279, 'T. Egerton', 'English'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, '978-0-316-76948-0', 277, 'Little, Brown and Company', 'English');

-- Query for specific conditions: Fiction books published in 1960
SELECT * FROM book_details WHERE Genre = 'Fiction' AND Year_Published = 1960;

-- Query for specific Book IDs
SELECT * FROM book_details WHERE Book_id IN (1, 2, 3, 4, 5);
-