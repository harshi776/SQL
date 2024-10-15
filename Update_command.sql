CREATE TABLE Inventory (
    ItemID INT PRIMARY KEY, ItemName VARCHAR(100), Type VARCHAR(50), Cost INT, QuantityInStock INT, Vendor VARCHAR(100), Details VARCHAR(255),
    SKU VARCHAR(50), DateAdded VARCHAR(20), Status VARCHAR(20));

INSERT INTO Inventory (ItemID, ItemName, Type, Cost, QuantityInStock, Vendor, Details, SKU, DateAdded, Status) VALUES
(1, 'Table Lamp', 'Home Decor', 2500, 40, 'Lighting Co.', 'Elegant table lamp', 'LAM123', '2024-01-01', 'Available'),
(2, 'Wall Art', 'Home Decor', 1500, 70, 'Artistic Creations', 'Beautiful wall art piece', 'ART456', '2024-01-05', 'Available'),
(3, 'Dining Set', 'Furniture', 30000, 20, 'Furniture Makers', 'Modern dining set', 'DIN789', '2024-01-10', 'Available'),
(4, 'Rug', 'Home Decor', 5000, 10, 'Home Textiles', 'Soft area rug', 'RUG101', '2024-01-15', 'Available'),
(5, 'Bookshelf', 'Furniture', 12000, 25, 'Woodcraft', 'Spacious wooden bookshelf', 'BKS202', '2024-01-20', 'Available'),
(6, 'Couch', 'Furniture', 45000, 15, 'Comfort Furniture', 'Luxurious couch', 'COU303', '2024-01-25', 'Available'),
(7, 'TV Stand', 'Furniture', 8000, 30, 'Modern Living', 'Stylish TV stand', 'TVS404', '2024-01-30', 'Available'),
(8, 'Floor Lamp', 'Home Decor', 4000, 50, 'Lighting Co.', 'Tall floor lamp', 'FLM505', '2024-01-31', 'Available'),
(9, 'Accent Chair', 'Furniture', 6000, 60, 'Comfort Furniture', 'Chic accent chair', 'ACC606', '2024-02-01', 'Available'),
(10, 'Storage Box', 'Home Decor', 1500, 100, 'Home Essentials', 'Durable storage box', 'STB707', '2024-02-02', 'Available');

CREATE TABLE Purchases (
    OrderID INT PRIMARY KEY, CustomerName VARCHAR(100), ItemID INT, Quantity INT, TotalAmount INT, OrderStatus VARCHAR(50), OrderDate VARCHAR(20),
    PaymentMethod VARCHAR(50), ShippingAddress VARCHAR(255), DeliveryStatus VARCHAR(20));

INSERT INTO Purchases (OrderID, CustomerName, ItemID, Quantity, TotalAmount, OrderStatus, OrderDate, PaymentMethod, ShippingAddress, DeliveryStatus) VALUES
(1, 'Sophia', 1, 2, 5000, 'Completed', '2024-01-02', 'Credit Card', '123 Maple St', 'Delivered'),
(2, 'Liam', 2, 1, 1500, 'Pending', '2024-01-03', 'PayPal', '456 Oak St', 'Pending'),
(3, 'Emma', 3, 1, 30000, 'Completed', '2024-01-04', 'Debit Card', '789 Pine St', 'Delivered'),
(4, 'Noah', 4, 2, 10000, 'Shipped', '2024-01-05', 'Credit Card', '101 Birch St', 'In Transit'),
(5, 'Olivia', 5, 1, 12000, 'Completed', '2024-01-06', 'Credit Card', '202 Cedar St', 'Delivered'),
(6, 'Ava', 6, 1, 45000, 'Pending', '2024-01-07', 'Debit Card', '303 Spruce St', 'Pending'),
(7, 'Isabella', 7, 1, 8000, 'Shipped', '2024-01-08', 'PayPal', '404 Fir St', 'Delivered'),
(8, 'Mia', 8, 3, 12000, 'Completed', '2024-01-09', 'Credit Card', '505 Willow St', 'Delivered'),
(9, 'Lucas', 9, 2, 12000, 'Pending', '2024-01-10', 'Debit Card', '606 Palm St', 'Pending'),
(10, 'Ethan', 10, 5, 7500, 'Shipped', '2024-01-11', 'Credit Card', '707 Maple St', 'In Transit');

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), Email VARCHAR(100), Phone VARCHAR(15), Address VARCHAR(255),
    City VARCHAR(50), State VARCHAR(50), ZipCode VARCHAR(10), JoinDate VARCHAR(20));

INSERT INTO Clients (ClientID, FirstName, LastName, Email, Phone, Address, City, State, ZipCode, JoinDate) VALUES
(1, 'Sophia', 'Clark', 'sophia.clark@example.com', '555-2001', '123 Maple St', 'New York', 'NY', '10001', '2024-01-01'),
(2, 'Liam', 'Brown', 'liam.brown@example.com', '555-2002', '456 Oak St', 'Los Angeles', 'CA', '90001', '2024-01-05'),
(3, 'Emma', 'Davis', 'emma.davis@example.com', '555-2003', '789 Pine St', 'Chicago', 'IL', '60601', '2024-01-10'),
(4, 'Noah', 'Martinez', 'noah.martinez@example.com', '555-2004', '101 Birch St', 'Houston', 'TX', '77001', '2024-01-15'),
(5, 'Olivia', 'Gonzalez', 'olivia.gonzalez@example.com', '555-2005', '202 Cedar St', 'Phoenix', 'AZ', '85001', '2024-01-20'),
(6, 'Ava', 'Hernandez', 'ava.hernandez@example.com', '555-2006', '303 Spruce St', 'Philadelphia', 'PA', '19101', '2024-01-25'),
(7, 'Isabella', 'Lopez', 'isabella.lopez@example.com', '555-2007', '404 Fir St', 'San Antonio', 'TX', '78201', '2024-01-30'),
(8, 'Mia', 'Wilson', 'mia.wilson@example.com', '555-2008', '505 Willow St', 'San Diego', 'CA', '92101', '2024-01-31'),
(9, 'Lucas', 'Smith', 'lucas.smith@example.com', '555-2009', '606 Palm St', 'Dallas', 'TX', '75201', '2024-02-01'),
(10, 'Ethan', 'Johnson', 'ethan.johnson@example.com', '555-2010', '707 Maple St', 'San Jose', 'CA', '95101', '2024-02-02');

SELECT * FROM Inventory;

UPDATE Inventory SET Cost = 2000 WHERE Type = 'Home Decor' AND QuantityInStock < 20;

UPDATE Inventory SET Status = 'Available' WHERE ItemID = 3 OR QuantityInStock = 0;

UPDATE Inventory SET Status = 'Out of Stock' 
WHERE ItemID IN (3, 4, 5);

UPDATE Purchases SET OrderStatus = 'Cancelled' WHERE PaymentMethod = 'Debit Card' AND DeliveryStatus = 'Pending';

UPDATE Purchases SET OrderStatus = 'Cancelled' WHERE PaymentMethod = 'Credit Card' OR Quantity > 2;

UPDATE Purchases SET OrderStatus = 'Shipped' WHERE OrderID IN (2, 5);

UPDATE Clients SET City = 'San Francisco' WHERE State = 'CA' OR ZipCode IN ('95101', '92101');

UPDATE Clients SET City = 'San Francisco' WHERE State = 'IL' OR ZipCode = '60601';

DELETE FROM Inventory WHERE ItemID IN (4, 6, 10);
ROLLBACK;  
DELETE FROM Purchases WHERE OrderID = 3;
ROLLBACK;  
COMMIT;    

DELETE FROM Clients WHERE ClientID = 7;
ROLLBACK;  
COMMIT;   
