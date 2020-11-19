-- seeding PRODUCT table with data

INSERT INTO PRODUCT (PRO_id, PRO_name, PRO_calories_amount, PRO_carbohydrates_amount, PRO_proteins_amount, PRO_fats_amount)
VALUES (NEXTVAL('SEQ_PRODUCT'), 'Brown rice', 360, 70, 10, 2);

INSERT INTO PRODUCT (PRO_id, PRO_name, PRO_calories_amount, PRO_carbohydrates_amount, PRO_proteins_amount, PRO_fats_amount, PRO_sugar_amount)
VALUES (NEXTVAL('SEQ_PRODUCT'), 'Sugar', 400, 100, 0, 0, 100);

INSERT INTO PRODUCT (PRO_id, PRO_name, PRO_calories_amount, PRO_carbohydrates_amount, PRO_proteins_amount, PRO_fats_amount, PRO_sugar_amount)
VALUES (NEXTVAL('SEQ_PRODUCT'), 'Pasta', 380, 75, 8, 5, 0);

INSERT INTO PRODUCT (PRO_id, PRO_name, PRO_calories_amount, PRO_carbohydrates_amount, PRO_proteins_amount, PRO_fats_amount, PRO_sugar_amount)
VALUES (NEXTVAL('SEQ_PRODUCT'), 'Milk', 120, 4, 3, 5, 0);


-- seeding USERS table with data

INSERT INTO USERS (USE_id, USE_nick, USE_password, USE_email) 
VALUES (NEXTVAL('SEQ_USERS'), 'pablomass', 'hardpass123', 'pablito@gmail.com');

INSERT INTO USERS (USE_id, USE_nick, USE_password, USE_email) 
VALUES (NEXTVAL('SEQ_USERS'), 'vadera', 'hardpass12', 'vaderaa@gmail.com');


-- seeding USER_DETAILS table with data

INSERT INTO USER_DETAILS (USED_id, USED_first_name, USED_last_name, USED_sex, USED_height, USED_weight, USE_id) 
VALUES (NEXTVAL('SEQ_USER_DETAILS'), 'Pablo', 'Picasso', 'Male', 180, 85, 1);

INSERT INTO USER_DETAILS (USED_id, USED_first_name, USED_last_name, USED_sex, USED_height, USED_weight, USE_id) 
VALUES (NEXTVAL('SEQ_USER_DETAILS'), 'Ann', 'Sherlock', 'Female', 160, 55, 2);


-- seeding NUTRITIONS_GOALS table with data

INSERT INTO NUTRITIONS_GOALS (NUTG_id, NUTG_calories_amount, NUTG_carbohydrates_amount, NUTG_proteins_amount, NUTG_fats_amount, USE_id) 
VALUES (NEXTVAL('SEQ_NUTRITIONS_GOALS'),3500, 450, 150, 100, 1);

INSERT INTO NUTRITIONS_GOALS (NUTG_id, NUTG_calories_amount, NUTG_carbohydrates_amount, NUTG_proteins_amount, NUTG_fats_amount, USE_id) 
VALUES (NEXTVAL('SEQ_NUTRITIONS_GOALS'), 2300, 300, 100, 50, 2);


-- seeding PHYSIQUE_GOALS table with data

INSERT INTO PHYSIQUE_GOALS (PHYG_id, PHYG_weight, PHYG_biceps_circumference, PHYG_chest_circumference, PHYG_thigh_circumference, USE_id) 
VALUES (NEXTVAL('SEQ_PHYSIQUE_GOALS'), 90, 40, 110, 60, 1);

INSERT INTO PHYSIQUE_GOALS (PHYG_id, PHYG_weight, USE_id) 
VALUES (NEXTVAL('SEQ_PHYSIQUE_GOALS'), 50, 2);


-- seeding DIARY table with data

INSERT INTO DIARY (DIA_id, DIA_name, USE_id) 
VALUES (NEXTVAL('SEQ_DIARY'), 'pablomass diary', 1);

INSERT INTO DIARY (DIA_id, DIA_name, USE_id) 
VALUES (NEXTVAL('SEQ_DIARY'), 'Ann diary', 2);


-- seeding DAY table with data

INSERT INTO DAY (DAY_id, DAY_date, DIA_id) 
VALUES (NEXTVAL('SEQ_DAY'), '2020-03-15', 1);

INSERT INTO DAY (DAY_id, DAY_date, DIA_id) 
VALUES (NEXTVAL('SEQ_DAY'), '2020-03-16', 1);

INSERT INTO DAY (DAY_id, DAY_date, DIA_id) 
VALUES (NEXTVAL('SEQ_DAY'), '2020-03-15', 2);

INSERT INTO DAY (DAY_id, DAY_date, DIA_id) 
VALUES (NEXTVAL('SEQ_DAY'), '2020-03-16', 2);


-- seeding DAILY_PHYSIQUE_MEASUREMENTS table with data

INSERT INTO DAILY_PHYSIQUE_MEASUREMENTS (DPM_id, DPM_weight, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_PHYSIQUE_MEASUREMENTS'), 86, 1);

INSERT INTO DAILY_PHYSIQUE_MEASUREMENTS (DPM_id, DPM_weight, DPM_biceps_circumference, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_PHYSIQUE_MEASUREMENTS'),  85, 37, 2);

INSERT INTO DAILY_PHYSIQUE_MEASUREMENTS (DPM_id, DPM_weight, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_PHYSIQUE_MEASUREMENTS'),  55, 4);


-- seeding DAILY_MEAL_DIARY table with data

INSERT INTO DAILY_MEAL_DIARY (DMD_id, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_MACRO_BALANCE'), 1);

INSERT INTO DAILY_MEAL_DIARY (DMD_id, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_MACRO_BALANCE'), 2);

INSERT INTO DAILY_MEAL_DIARY (DMD_id, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_MACRO_BALANCE'), 3);

INSERT INTO DAILY_MEAL_DIARY (DMD_id, DAY_id) 
VALUES (NEXTVAL('SEQ_DAILY_MACRO_BALANCE'), 4);


-- seeding DAILY_MEAL_DIARY table with data

INSERT INTO MEAL1 (MEA1_id, DMD_id) 
VALUES (NEXTVAL('SEQ_MEAL1'), 3);


-- seeding INGREDIENT1 table with data

INSERT INTO INGREDIENT1 (ING1_id, ING1_multiplier, PRO_id, MEA1_id) 
VALUES (NEXTVAL('SEQ_INGREDIENT1'), 2.5, 1, 1);

INSERT INTO INGREDIENT1 (ING1_id, ING1_multiplier, PRO_id, MEA1_id) 
VALUES (NEXTVAL('SEQ_INGREDIENT1'), 0.3, 2, 1);




