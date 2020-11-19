
-- select all columns by using * sign examples:
SELECT * FROM USERS;
SELECT * FROM PRODUCT WHERE PRO_id = 1;

-- select particular columns examples
SELECT USE_nick, USE_email FROM USERS WHERE USE_nick = 'pablomass';
SELECT PRO_name, PRO_calories_amount, PRO_sugar_amount 
	FROM PRODUCT WHERE PRO_id = 1;

-- IS NULL / IS NOT NULL examples
SELECT * FROM PRODUCT WHERE PRO_sugar_amount IS NULL;
SELECT * FROM PRODUCT WHERE PRO_sugar_amount IS NOT NULL;

-- BETWEEN examples
SELECT * FROM DAY WHERE DAY_date BETWEEN '2020-03-15' AND '2020-03-16';
SELECT * FROM PRODUCT WHERE PRO_calories_amount BETWEEN 300 AND 390;

-- IN examples
SELECT * FROM PRODUCT WHERE PRO_calories_amount IN (120, 380, 100, 400);
SELECT * FROM PRODUCT WHERE PRO_calories_amount IN (100, 380, 400, 500, 900);

-- ORDER BY in ascending order
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount;
SELECT * FROM PRODUCT ORDER BY PRO_proteins_amount;

-- ORDER BY in descending order
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount DESC;
SELECT * FROM PRODUCT ORDER BY PRO_proteins_amount DESC;

-- ORDER BY + WHERE clause
SELECT * FROM PRODUCT WHERE PRO_calories_amount BETWEEN 200 and 390 
ORDER BY PRO_calories_amount;
SELECT * FROM PRODUCT WHERE PRO_proteins_amount BETWEEN 8 and 30 
ORDER BY PRO_proteins_amount DESC;

-- LIMIT examples
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount LIMIT 2;
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount LIMIT 3;

-- OFFSET examples
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount LIMIT 2 OFFSET 1;
SELECT * FROM PRODUCT ORDER BY PRO_calories_amount LIMIT 2 OFFSET 2;

-- MIN() function examples
SELECT MIN(PRO_calories_amount) FROM PRODUCT;
SELECT MIN(PRO_calories_amount) FROM PRODUCT 
WHERE PRO_calories_amount BETWEEN 110 AND 300;

-- MAX() function examples
SELECT MAX(PRO_calories_amount) FROM PRODUCT;
SELECT MAX(PRO_calories_amount) FROM PRODUCT 
WHERE PRO_calories_amount BETWEEN 200 AND 390;

-- COUNT() function examples
SELECT COUNT(PRO_id) FROM PRODUCT WHERE PRO_calories_amount BETWEEN 200 and 390; 
SELECT COUNT(PRO_id) FROM PRODUCT WHERE PRO_calories_amount BETWEEN 120 and 500; 

-- AVG() function examples
SELECT AVG(PRO_calories_amount) FROM PRODUCT;
SELECT AVG(PRO_carbohydrates_amount) FROM PRODUCT;

-- SUM() function example
SELECT SUM(DMAB_calories_amount) FROM DAILY_MACRO_BALANCE WHERE DMD_id 
BETWEEN 1 AND 7;

-- LIKE with % wildcard examples
SELECT * FROM USERS WHERE USE_nick LIKE 'Em%';
SELECT * FROM USERS WHERE USE_nick LIKE '%mass';
SELECT * FROM USERS WHERE USE_nick LIKE 'Em%';
SELECT * FROM USERS WHERE USE_email LIKE '%gmail%';

-- LIKE with _ wildcard examples
SELECT * FROM USERS WHERE USE_nick LIKE '_a%';
SELECT * FROM USERS WHERE USE_email LIKE '_a%';
SELECT * FROM USERS WHERE USE_email LIKE '_a_l%';
SELECT * FROM USERS WHERE USE_nick LIKE '_________%';

-- AS alias as a shortcut
SELECT u.USE_nick, u.USE_email, ud.USED_first_name, ud.USED_last_name, ud.USED_sex, 
ud.USED_weight 
FROM USERS u, USER_DETAILS ud 
WHERE u.USE_id = 1 AND ud.USE_id = 1;

-- AS alias for renaming the returner column name
SELECT USE_email AS Email FROM USERS;





