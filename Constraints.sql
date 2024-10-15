
CREATE TABLE Vehicle (
    ID INT NOT NULL UNIQUE,
    Vehicle_Number VARCHAR(10) NOT NULL,
    Driver_Name VARCHAR(50),
    Capacity INT NOT NULL,
    Route VARCHAR(50) NOT NULL
);

DESC Vehicle;

SELECT * FROM Vehicle;

INSERT INTO Vehicle VALUES (1, '17B', 'Ramesh', 50, 'Route A');
INSERT INTO Vehicle VALUES (2, '18B', 'Suresh', 50, 'Route B');
INSERT INTO Vehicle VALUES (3, '19B', 'Amesh', 40, 'Route C');
INSERT INTO Vehicle VALUES (4, '15A', 'Raju', 60, 'Route D');
INSERT INTO Vehicle VALUES (5, '101J', 'Surya', 40, 'Route E');
INSERT INTO Vehicle VALUES (6, '1B', 'Prajwal', 50, 'Route A');
INSERT INTO Vehicle VALUES (7, '10C', 'Pawan', 50, 'Route B');
INSERT INTO Vehicle VALUES (8, '9B', 'Amit', 40, 'Route G');
INSERT INTO Vehicle VALUES (9, '5A', 'Ragu', 60, 'Route F');
INSERT INTO Vehicle VALUES (10, '104J', 'Akil', 40, 'Route Y');
INSERT INTO Vehicle VALUES (11, 'MH1234', 'Seema', 60, 'Route C');
INSERT INTO Vehicle VALUES (12, 'MH2345', 'Prakash', 50, 'Route L');
INSERT INTO Vehicle VALUES (13, 'MH3456', 'Jyoti', 56, 'Route M');
INSERT INTO Vehicle VALUES (14, 'MH67', 'Deepak', 51, 'Route B');
INSERT INTO Vehicle VALUES (15, 'MH15', 'Kulkarni', 49, 'Route O');
INSERT INTO Vehicle VALUES (16, 'MH1689', 'Sanjay', 45, 'Route P');
INSERT INTO Vehicle VALUES (17, 'MH17', 'Preeti', 54, 'Route A');
INSERT INTO Vehicle VALUES (18, 'MH18', 'Ajay', 58, 'Route R');
INSERT INTO Vehicle VALUES (19, 'MHH9012', 'Vikash', 46, 'Route S');
INSERT INTO Vehicle VALUES (20, 'MIJ3', 'Anita', 60, 'Route D');


CREATE TABLE TrainInfo (
    Train_ID INT UNIQUE,
    Train_Name VARCHAR(50) UNIQUE,
    Train_Type VARCHAR(20) NOT NULL,
    Total_Coaches INT NOT NULL,
    Route VARCHAR(100) NOT NULL
);

DESC TrainInfo;

SELECT * FROM TrainInfo;

INSERT INTO TrainInfo VALUES
(1, 'Rajdhani Express', 'Express', 20, 'New Delhi to Mumbai Central'),
(2, 'Shatabdi Express', 'Express', 15, 'Chennai to Bangalore'),
(3, 'Duronto Express', 'Express', 22, 'Kolkata to Delhi'),
(4, 'Garib Rath', 'Superfast', 18, 'Mumbai to Chennai'),
(5, 'Jan Shatabdi', 'Superfast', 16, 'Bangalore to Mysore'),
(6, 'Humsafar Express', 'Express', 24, 'Hyderabad to Delhi'),
(7, 'Vande Bharat', 'Semi-High Speed', 16, 'Delhi to Varanasi'),
(8, 'Tejas Express', 'Superfast', 18, 'Mumbai to Ahmedabad'),
(9, 'Mysore Express', 'Passenger', 20, 'Chennai to Mysore'),
(10, 'Bhopal Shatabdi', 'Express', 14, 'New Delhi to Bhopal'),
(11, 'Sampark Kranti', 'Superfast', 22, 'Bangalore to Delhi'),
(12, 'Karnataka Express', 'Superfast', 24, 'Bangalore to Delhi'),
(13, 'Yuva Express', 'Superfast', 20, 'Howrah to Delhi'),
(14, 'Chennai Express', 'Passenger', 18, 'Mumbai to Chennai'),
(15, 'Konkan Kanya Express', 'Superfast', 16, 'Mumbai to Goa'),
(16, 'Sapt Kranti', 'Superfast', 18, 'Delhi to Muzaffarpur'),
(17, 'Maharaja Express', 'Luxury', 12, 'Delhi to Rajasthan'),
(18, 'Golden Chariot', 'Luxury', 14, 'Bangalore to Goa'),
(19, 'Palace on Wheels', 'Luxury', 13, 'Delhi to Rajasthan'),
(20, 'Dakshin Express', 'Express', 20, 'Hyderabad to Delhi');


ALTER TABLE TrainInfo MODIFY COLUMN Train_Name VARCHAR(50) UNIQUE;

 
CREATE TABLE Vehicle (
    ID INT NOT NULL UNIQUE,
    Vehicle_Number VARCHAR(10) NOT NULL,
    Driver_Name VARCHAR(50),
    Capacity INT NOT NULL,
    Route VARCHAR(50) NOT NULL
);

DESC Vehicle;
SELECT * FROM Vehicle;
INSERT INTO Vehicle VALUES (1, '17B', 'Ramesh', 50, 'Route A');
INSERT INTO Vehicle VALUES (2, '18B', 'Suresh', 50, 'Route B');
INSERT INTO Vehicle VALUES (3, '19B', 'Amesh', 40, 'Route C');
INSERT INTO Vehicle VALUES (4, '15A', 'Raju', 60, 'Route D');
INSERT INTO Vehicle VALUES (5, '101J', 'Surya', 40, 'Route E');
INSERT INTO Vehicle VALUES (6, '1B', 'Prajwal', 50, 'Route A');
INSERT INTO Vehicle VALUES (7, '10C', 'Pawan', 50, 'Route B');
INSERT INTO Vehicle VALUES (8, '9B', 'Amit', 40, 'Route G');
INSERT INTO Vehicle VALUES (9, '5A', 'Ragu', 60, 'Route F');
INSERT INTO Vehicle VALUES (10, '104J', 'Akil', 40, 'Route Y');
INSERT INTO Vehicle VALUES (11, 'MH1234', 'Seema', 60, 'Route C');
INSERT INTO Vehicle VALUES (12, 'MH2345', 'Prakash', 50, 'Route L');
INSERT INTO Vehicle VALUES (13, 'MH3456', 'Jyoti', 56, 'Route M');
INSERT INTO Vehicle VALUES (14, 'MH67', 'Deepak', 51, 'Route B');
INSERT INTO Vehicle VALUES (15, 'MH15', 'Kulkarni', 49, 'Route O');
INSERT INTO Vehicle VALUES (16, 'MH1689', 'Sanjay', 45, 'Route P');
INSERT INTO Vehicle VALUES (17, 'MH17', 'Preeti', 54, 'Route A');
INSERT INTO Vehicle VALUES (18, 'MH18', 'Ajay', 58, 'Route R');
INSERT INTO Vehicle VALUES (19, 'MHH9012', 'Vikash', 46, 'Route S');
INSERT INTO Vehicle VALUES (20, 'MIJ3', 'Anita', 60, 'Route D');
CREATE TABLE TrainInfo (
    Train_ID INT UNIQUE,
    Train_Name VARCHAR(50) UNIQUE,
    Train_Type VARCHAR(20) NOT NULL,
    Total_Coaches INT NOT NULL,
    Route VARCHAR(100) NOT NULL
);
DESC TrainInfo;
SELECT * FROM TrainInfo;
INSERT INTO TrainInfo VALUES
(1, 'Rajdhani Express', 'Express', 20, 'New Delhi to Mumbai Central'),
(2, 'Shatabdi Express', 'Express', 15, 'Chennai to Bangalore'),
(3, 'Duronto Express', 'Express', 22, 'Kolkata to Delhi'),
(4, 'Garib Rath', 'Superfast', 18, 'Mumbai to Chennai'),
(5, 'Jan Shatabdi', 'Superfast', 16, 'Bangalore to Mysore'),
(6, 'Humsafar Express', 'Express', 24, 'Hyderabad to Delhi'),
(7, 'Vande Bharat', 'Semi-High Speed', 16, 'Delhi to Varanasi'),
(8, 'Tejas Express', 'Superfast', 18, 'Mumbai to Ahmedabad'),
(9, 'Mysore Express', 'Passenger', 20, 'Chennai to Mysore'),
(10, 'Bhopal Shatabdi', 'Express', 14, 'New Delhi to Bhopal'),
(11, 'Sampark Kranti', 'Superfast', 22, 'Bangalore to Delhi'),
(12, 'Karnataka Express', 'Superfast', 24, 'Bangalore to Delhi'),
(13, 'Yuva Express', 'Superfast', 20, 'Howrah to Delhi'),
(14, 'Chennai Express', 'Passenger', 18, 'Mumbai to Chennai'),
(15, 'Konkan Kanya Express', 'Superfast', 16, 'Mumbai to Goa'),
(16, 'Sapt Kranti', 'Superfast', 18, 'Delhi to Muzaffarpur'),
(17, 'Maharaja Express', 'Luxury', 12, 'Delhi to Rajasthan'),
(18, 'Golden Chariot', 'Luxury', 14, 'Bangalore to Goa'),
(19, 'Palace on Wheels', 'Luxury', 13, 'Delhi to Rajasthan'),
(20, 'Dakshin Express', 'Express', 20, 'Hyderabad to Delhi');

ALTER TABLE TrainInfo MODIFY COLUMN Train_Name VARCHAR(50) UNIQUE;
ALTER TABLE TrainInfo MODIFY COLUMN Total_Coaches INT NOT NULL;

