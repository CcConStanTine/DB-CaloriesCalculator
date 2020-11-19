
UPDATE PRODUCT SET PRO_name = 'Rice' WHERE PRO_name = 'Brown Rice';

UPDATE PRODUCT SET PRO_name = 'Brown Rice' WHERE PRO_id = 1;


UPDATE USERS SET USE_nick = 'Emily321', USE_email = 'emily123@gmail.com' WHERE USE_id = 2;

UPDATE USERS SET USE_password = 'someNewHardPasswrod' WHERE USE_nick = 'pablomass';


UPDATE USER_DETAILS 
SET  USED_first_name = 'Andrea', USED_last_name = 'Bocielli', USED_sex = 'Male', USED_height = 175, USED_weight = 75
WHERE USE_id = 1;


UPDATE NUTRITIONS_GOALS 
SET NUTG_calories_amount = 3000, NUTG_carbohydrates_amount = 400, NUTG_proteins_amount = 120, NUTG_fats_amount = 90
WHERE USE_id = 1;


UPDATE INGREDIENT1 
SET ING1_multiplier = 3.5 
WHERE ING1_id = 1;

UPDATE INGREDIENT1 
SET ING1_multiplier = 0.5 
WHERE ING1_id = 2;








