USE sqleval;

DELIMITER //
CREATE PROCEDURE fill_sales()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 100000 DO
    INSERT INTO sales (customer_id, amount, created_at)
    VALUES (
      FLOOR(1 + RAND() * 1000),
      ROUND(RAND() * 1000, 2),
      NOW() - INTERVAL FLOOR(RAND() * 365) DAY
    );
    SET i = i + 1;
  END WHILE;
END//
DELIMITER ;

CALL fill_sales();
DROP PROCEDURE fill_sales;

