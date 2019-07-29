DELIMITER //
CREATE PROCEDURE odd_or_even(IN num INT)
BEGIN
  IF num % 2 = 0 THEN
    SELECT 'the number is even';
  ELSE
    SELECT 'the number is odd';
  END IF;
END //
