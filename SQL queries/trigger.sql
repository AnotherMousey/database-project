-- verify that the airportID must be a 3 letter string --
DELIMITER $$

CREATE TRIGGER beforeInsertIntoAirport 
    BEFORE INSERT ON airport 
    FOR EACH ROW
BEGIN
    -- Validate that airportID is exactly 3 characters long
    IF LENGTH(NEW.airportID) != 3 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERROR: airportID must be a string of 3 letters';
    END IF;
END$$

CREATE TRIGGER beforeInsertIntoFlight 
    BEFORE INSERT ON flight
    FOR EACH ROW
BEGIN
    -- Validate that timeFrom is before timeTo
    IF TIMESTAMP(NEW.dateFrom, NEW.timeFrom) > TIMESTAMP(NEW.dateTo, NEW.timeTo) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERROR: timeFrom must not be after timeTo';
    END IF;
END$$

CREATE TRIGGER beforeInsertIntoReservation
    BEFORE INSERT ON reservation
    FOR EACH ROW
BEGIN
    -- Validate that reservationTime is before timeTo
    IF (SELECT TIMESTAMP(f.dateFrom, f.timeFrom) FROM flight f WHERE f.flightID = NEW.flightID) < NEW.reservationTime THEN
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERROR: reservationTime must be before the time the flight fly';
    END IF;
END$$

DELIMITER ;
