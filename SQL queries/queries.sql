-- INNER JOIN --
-- output the customer and their reservations --
SELECT c.*, r.flightID, r.reservationTime FROM customer c
INNER JOIN reservation r ON c.customerID = r.customerID;

-- OUTER JOIN, here I use LEFT OUTER JOIN --
-- output airports and their respective flight from that airport --
SELECT a.*, f.flightID, f.timeFrom, f.dateFrom FROM airport a
LEFT JOIN flight f ON a.airportID = f.airportFrom;

-- SUBQUERY in WHERE statement --
-- get all airports that has a flight from --
SELECT * FROM airport 
WHERE airportID IN (SELECT airportFROM FROM flight);

-- SUBQUERY in FROM statement --
-- GET all date in 2024 and the number of flight that fly on that date --
SELECT * FROM 
(SELECT dateFrom, COUNT(flightID) as countFlight FROM flight GROUP BY dateFrom) as flightFrom
WHERE dateFrom LIKE '%2024';

-- Query using GROUP BY --
-- get all airports that has a flight to and the number of flights that depart there --
SELECT airportTo, COUNT(flightID) as countFlight FROM flight
GROUP BY airportTo;
