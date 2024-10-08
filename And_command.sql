
CREATE TABLE travel_info (
    Airport_id int,
    Airport_name varchar(50),
    city varchar(50),
    country varchar(50),
    elevation int,
    TimeZone varchar(50),
    TerminalCount int,
    RunwayCount int,
    Website varchar(50),
    YearOpened int
);


CREATE TABLE sports_history (
    Game_id int,
    G_year int,
    city varchar(50),
    country varchar(50),
    no_of_athletes int,
    no_of_nations int,
    Total_event int,
    season varchar(50),
    venue varchar(50),
    medalCount int
);

-- Insert data into travel_info
INSERT INTO travel_info VALUES
(1, 'Bengaluru International Airport', 'Bengaluru', 'India', 8, 'GMT+5:30', 4, 3, 'www.bengaluruairport.com', 1930),
(2, 'Mangalore International Airport', 'Mangalore', 'India', 5, 'GMT+5:30', 4, 3, 'www.mangaloreairport.com', 1948),
(3, 'Los Angeles International Airport', 'Los Angeles', 'USA', 7, 'GMT-8', 4, 5, 'www.lawa.com', 1925),
(4, 'Indira Gandhi International Airport', 'Delhi', 'India', 8, 'GMT+5:30', 3, 4, 'www.igairport.com', 1930),
(5, 'Chennai International Airport', 'Chennai', 'India', 0, 'GMT+5:30', 2, 3, 'www.chennaiairport.com', 1940),
(6, 'Heathrow Airport', 'London', 'UK', 9, 'GMT', 4, 5, 'www.heathrow.com', 1946),
(7, 'Cochin International Airport', 'Kochi', 'India', 7, 'GMT+5:30', 4, 3, 'www.kochiairport.com', 1960),
(8, 'Goa International Airport', 'Goa', 'India', 6, 'GMT+5:30', 4, 2, 'www.goaairport.com', 1960),
(9, 'Pune International Airport', 'Pune', 'India', 9, 'GMT+5:30', 5, 3, 'www.puneairport.com', 1950),
(10, 'Jaipur International Airport', 'Jaipur', 'India', 4, 'GMT+5:30', 4, 2, 'www.jaipurairport.com', 1949),
(11, 'Lucknow Airport', 'Lucknow', 'India', 8, 'GMT+5:30', 4, 3, 'www.lucknowairport.com', 1930),
(12, 'Bhopal Airport', 'Bhopal', 'India', 6, 'GMT+5:30', 2, 2, 'www.bhopalairport.com', 1933);

-- Insert data into sports_history
INSERT INTO sports_history VALUES
(1, 1896, 'London', 'UK', 280, 13, 43, 'Summer', 'Wembley Stadium', 43),
(2, 1900, 'Paris', 'France', 997, 24, 95, 'Summer', 'White City Stadium', 95),
(3, 1904, 'Rome', 'Italy', 650, 12, 95, 'Summer', 'Rome Stadium', 95),
(4, 1908, 'London', 'UK', 410, 59, 130, 'Summer', 'White Stadium', 130),
(5, 1915, 'London', 'UK', 258, 16, 16, 'Winter', 'Stockholm Stadium', 16),
(6, 1928, 'Berlin', 'Germany', 298, 46, 109, 'Summer', 'Exposition Stadium', 109);


SELECT * FROM travel_info WHERE country = 'India' AND elevation = 6 AND YearOpened = 1960;

SELECT * FROM sports_history WHERE Total_event = 95 OR season = 'Winter';

SELECT * FROM travel_info WHERE Airport_id IN (1, 2, 3, 4, 5);
