CREATE PROCEDURE getPositive(`start` INT, `end` INT)
BEGIN
    DECLARE i INT DEFAULT `start`;
    DECLARE res_str TEXT DEFAULT NULL;

    WHILE  i<=`end` DO

            IF i%2 = 0 THEN
                IF res_str IS NULL THEN
                    SET res_str = concat(i);
                ELSE
                    SET res_str = concat(res_str, ', ', i);
                END IF;
            END IF;

            SET i = i + 1;

        END WHILE;
    SELECT res_str;
END