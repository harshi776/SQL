CREATE DATABASE inventory_management;
USE inventory_management;

CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL,
    contact_person VARCHAR(50),
    phone_number BIGINT,
    email VARCHAR(100)
);

INSERT INTO Supplier (supplier_name, contact_person, phone_number, email) VALUES
('Supplier A', 'Alice Johnson', 9123456789, 'alice@supplierA.com'),
('Supplier B', 'Bob Smith', 9112345678, 'bob@supplierB.com'),
('Supplier C', 'Charlie Brown', 9198765432, 'charlie@supplierC.com');

SELECT * FROM Supplier;

CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    supplier_id INT,
    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

INSERT INTO Product (product_name, quantity, price, supplier_id) VALUES
('Product A', 100, 25.50, 1),
('Product B', 200, 15.75, 2),
('Product C', 150, 30.00, 3);

SELECT * FROM Product;

CREATE TABLE Order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    customer_name VARCHAR(50),
    total_amount DECIMAL(10,2)
);

INSERT INTO Order (order_date, customer_name, total_amount) VALUES
('2023-10-01', 'John Doe', 500.00),
('2023-10-05', 'Jane Smith', 300.00),
('2023-10-10', 'Emily Davis', 750.00);

SELECT * FROM Order;

CREATE TABLE Order_Detail (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES order(order_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(product_id));

INSERT INTO Order_Detail (order_id, product_id, quantity, price) VALUES
(1, 1, 10, 25.50),
(1, 2, 5, 15.75),
(2, 1, 20, 25.50),
(3, 3, 15, 30.00);

SELECT * FROM Order_Detail;
