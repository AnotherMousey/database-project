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

DELIMITER ;
