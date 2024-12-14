-- replace the customer with ID abc123 that fly in Singapore Airline to abc321 due to errors --
DELIMITER $$

CREATE PROCEDURE UpdateCustomerID()
BEGIN
    START TRANSACTION;

    UPDATE reservation
    SET customerID = REPLACE(customerID, 'abc123', 'abc321')
    WHERE flightID LIKE 'SIA%';

    IF ROW_COUNT() = 0 THEN
        ROLLBACK;
        SELECT 'ERROR: MySQL cannot find the row that you are looking for' AS ErrorMessage;
    ELSE
        COMMIT;
        SELECT 'Transaction committed successfully' AS SuccessMessage;
    END IF;
END$$

DELIMITER ;
