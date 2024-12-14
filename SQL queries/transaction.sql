-- if I add another airport to the database, how many airports are there in each country in the database --
START TRANSACTION;

INSERT INTO airport VALUES
('HPH', 'Cat Bi International Airport', 'Hai Phong', 'Viet Nam');

SELECT country, COUNT(airportID) FROM airport
GROUP BY country;

ROLLBACK;
