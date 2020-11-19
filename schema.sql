
CREATE TABLE USERS
(
	USE_id 					BIGINT 			NOT NULL,
	USE_nick 				VARCHAR(32) NOT NULL,
	USE_password 		VARCHAR(70) NOT NULL,
	USE_email 				VARCHAR(32) NOT NULL
);

ALTER TABLE USERS ADD CONSTRAINT PK_USERS 
	PRIMARY KEY (USE_id); 
	
CREATE SEQUENCE SEQ_USERS 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	


CREATE TABLE USER_PREFERENCES
(
	USEP_id 							BIGINT 			NOT NULL,
	USEP_dark_mode 			BOOLEAN 		NOT NULL,
	USEP_weight_unit 			VARCHAR(10) NOT NULL,
	USEP_height_unit 			VARCHAR(10) NOT NULL,
	USEP_meal1_name 		VARCHAR(16) NOT NULL,
	USEP_meal2_name 		VARCHAR(16) NOT NULL,
	USEP_meal3_name 		VARCHAR(16) NOT NULL,
	USEP_meal4_name 		VARCHAR(16) NOT NULL,
	USEP_meal5_name 		VARCHAR(16) NOT NULL,
	USE_id 							BIGINT 			NOT NULL
);

ALTER TABLE USER_PREFERENCES ADD CONSTRAINT PK_USER_PREFERENCES 
	PRIMARY KEY (USEP_id); 

ALTER TABLE USER_PREFERENCES ADD CONSTRAINT FK_USER_PREFERENCES 
	FOREIGN KEY (USE_id) REFERENCES USERS (USE_id); 

CREATE SEQUENCE SEQ_USER_PREFERENCES 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE USER_DETAILS
(
	USED_id 							BIGINT 			NOT NULL,
	USED_first_name 			VARCHAR(32),
	USED_last_name 			VARCHAR(32),
	USED_date_of_birth 		DATE,
	USED_age						INT,
	USED_sex 						VARCHAR(6),
	USED_height					INT,
	USED_weight 					DECIMAL,
	USE_id 							BIGINT 			NOT NULL
);

ALTER TABLE USER_DETAILS ADD CONSTRAINT PK_USER_DETAILS 
	PRIMARY KEY (USED_id); 

ALTER TABLE USER_DETAILS ADD CONSTRAINT FK_USER_DETAILS 
	FOREIGN KEY (USE_id) REFERENCES USERS (USE_id); 
	
CREATE SEQUENCE SEQ_USER_DETAILS 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE NUTRITIONS_GOALS
(
	NUTG_id 											BIGINT 	NOT NULL,
	NUTG_calories_amount 					INT 			NOT NULL,
	NUTG_carbohydrates_amount 		INT 			NOT NULL,
	NUTG_proteins_amount 				INT 			NOT NULL,
	NUTG_fats_amount 						INT 			NOT NULL,
	NUTG_fiber_amount 						INT, 
	NUTG_sugar_amount 					INT, 
	USE_id 											BIGINT 	NOT NULL
);

ALTER TABLE NUTRITIONS_GOALS ADD CONSTRAINT PK_NUTRITIONS_GOALS 
	PRIMARY KEY (NUTG_id); 

ALTER TABLE NUTRITIONS_GOALS ADD CONSTRAINT FK_NUTRITIONS_GOALS 
	FOREIGN KEY (USE_id) REFERENCES USERS (USE_id); 
	
CREATE SEQUENCE SEQ_NUTRITIONS_GOALS 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	
	

CREATE TABLE PHYSIQUE_GOALS
(
	PHYG_id 											BIGINT 		NOT NULL,
	PHYG_weight									DECIMAL,
	PHYG_forearm_circumference 		INT, 
	PHYG_biceps_circumference 		INT, 
	PHYG_neck_circumference 			INT, 
	PHYG_chest_circumference 			INT, 
	PHYG_waist_circumference 			INT, 
	PHYG_hips_circumference 			INT, 
	PHYG_thigh_circumference 			INT, 
	PHYG_calf_circumference 				INT, 
	USE_id 											BIGINT 		NOT NULL
);

ALTER TABLE PHYSIQUE_GOALS ADD CONSTRAINT PK_PHYSIQUE_GOALS 
	PRIMARY KEY (PHYG_id); 

ALTER TABLE PHYSIQUE_GOALS ADD CONSTRAINT FK_PHYSIQUE_GOALS 
	FOREIGN KEY (USE_id) REFERENCES USERS (USE_id); 
	
CREATE SEQUENCE SEQ_PHYSIQUE_GOALS 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	
	
	
CREATE TABLE PRODUCT
(
	PRO_id 										BIGINT 				NOT NULL, 
	PRO_name 									VARCHAR(50) 	NOT NULL, 
	PRO_calories_amount 				INT 						NOT NULL, 
	PRO_carbohydrates_amount 	INT 						NOT NULL, 
	PRO_proteins_amount 				INT 						NOT NULL, 
	PRO_fats_amount 						INT 						NOT NULL, 
	PRO_fiber_amount 						INT,
	PRO_sugar_amount 					INT,
	PRO_magnesium				 		DECIMAL,
	PRO_calcium					 			DECIMAL,
	PRO_iron							 			DECIMAL,
	PRO_pottasium 				 			DECIMAL,
	PRO_zinc 			 				 		DECIMAL,
	PRO_chromium   				 		DECIMAL,
	PRO_vitamin_b12   			 		DECIMAL,
	PRO_vitamin_a   				 			DECIMAL,
	PRO_vitamin_d   				 		DECIMAL,
	PRO_vitamin_e   				 			DECIMAL,
	PRO_vitamin_k   				 			DECIMAL,
	PRO_omega_3   				 			DECIMAL	
);
	
ALTER TABLE PRODUCT ADD CONSTRAINT PK_PRODUCT 
	PRIMARY KEY (PRO_id); 
	
CREATE SEQUENCE SEQ_PRODUCT 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	


CREATE TABLE SCIENTISTS_RECOMENDATION
(
	SCIR_id 					BIGINT 				NOT NULL,
	SCIR_name 				VARCHAR(50) 	NOT NULL,
	SCIR_description 	VARCHAR(50) 	NOT NULL
);

ALTER TABLE SCIENTISTS_RECOMENDATION ADD CONSTRAINT PK_SCIENTISTS_RECOMENDATION 
	PRIMARY KEY (SCIR_id); 
	
CREATE SEQUENCE SEQ_SCIENTISTS_RECOMENDATION 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	


CREATE TABLE MACRONUTRIENTS_RECOMENDATION
(
	MAC_id 										BIGINT 	NOT NULL, 
	MAC_calories_amount 				INT, 
	MAC_carbohydrates_amount 	INT,
	MAC_proteins_amount 				INT,
	MAC_fats_amount 						INT,
	MAC_fiber_amount 					INT,
	MAC_sugar_amount 					INT, 
	SCIR_id 										BIGINT 	NOT NULL
);

ALTER TABLE MACRONUTRIENTS_RECOMENDATION ADD CONSTRAINT PK_MACRONUTRIENTS_RECOMENDATION 
	PRIMARY KEY (MAC_id); 

ALTER TABLE MACRONUTRIENTS_RECOMENDATION ADD CONSTRAINT FK_MACRONUTRIENTS_RECOMENDATION 
	FOREIGN KEY (SCIR_id) REFERENCES SCIENTISTS_RECOMENDATION (SCIR_id); 
	
CREATE SEQUENCE SEQ_MACRONUTRIENTS_RECOMENDATION 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	
	
CREATE TABLE MICRONUTRIENTS_RECOMENDATION
(
	MIC_id 					BIGINT 		NOT NULL, 
	MIC_magnesium		DECIMAL,
	MIC_calcium			DECIMAL,
	MIC_iron					DECIMAL,
	MIC_pottasium 		DECIMAL,
	MIC_zinc 			 		DECIMAL,
	MIC_chromium   		DECIMAL,
	MIC_vitamin_b12   	DECIMAL,
	MIC_vitamin_a   		DECIMAL,
	MIC_vitamin_d   		DECIMAL,
	MIC_vitamin_e   		DECIMAL,
	MIC_vitamin_k   		DECIMAL,
	MIC_omega_3   		DECIMAL	,
	SCIR_id 					BIGINT 		NOT NULL
);

ALTER TABLE MICRONUTRIENTS_RECOMENDATION ADD CONSTRAINT PK_MICRONUTRIENTS_RECOMENDATION 
	PRIMARY KEY (MIC_id); 

ALTER TABLE MICRONUTRIENTS_RECOMENDATION ADD CONSTRAINT FK_MICRONUTRIENTS_RECOMENDATION 
	FOREIGN KEY (SCIR_id) REFERENCES SCIENTISTS_RECOMENDATION (SCIR_id); 
	
CREATE SEQUENCE SEQ_PK_MICRONUTRIENTS_RECOMENDATION 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;




CREATE TABLE DIARY
(
	DIA_id 			BIGINT 			NOT NULL,
	DIA_name 	VARCHAR(40) NOT NULL,
	USE_id 			BIGINT 			NOT NULL
);

ALTER TABLE DIARY ADD CONSTRAINT PK_DIARY 
	PRIMARY KEY (DIA_id); 

ALTER TABLE DIARY ADD CONSTRAINT FK_DIARY 
	FOREIGN KEY (USE_id) REFERENCES USERS (USE_id); 
	
CREATE SEQUENCE SEQ_DIARY 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE DAY
(
	DAY_id 			BIGINT 	NOT NULL,
	DAY_date 	DATE 		NOT NULL,
	DIA_id 			BIGINT 	NOT NULL
);

ALTER TABLE DAY ADD CONSTRAINT PK_DAY 
	PRIMARY KEY (DAY_id); 

ALTER TABLE DAY ADD CONSTRAINT FK_DAY 
	FOREIGN KEY (DIA_id) REFERENCES DIARY (DIA_id); 
	
CREATE SEQUENCE SEQ_DAY 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;


	
CREATE TABLE DAILY_PHYSIQUE_MEASUREMENTS
(
	DPM_id 										BIGINT 		NOT NULL,
	DPM_weight								DECIMAL,
	DPM_forearm_circumference 	INT, 
	DPM_biceps_circumference 		INT, 
	DPM_neck_circumference 			INT, 
	DPM_chest_circumference 		INT, 
	DPM_waist_circumference 		INT, 
	DPM_hips_circumference 			INT, 
	DPM_thigh_circumference 		INT, 
	DPM_calf_circumference 			INT, 
	DAY_id 										BIGINT 		NOT NULL
);

ALTER TABLE DAILY_PHYSIQUE_MEASUREMENTS ADD CONSTRAINT PK_DAILY_PHYSIQUE_MEASUREMENTS 
	PRIMARY KEY (DPM_id); 

ALTER TABLE DAILY_PHYSIQUE_MEASUREMENTS ADD CONSTRAINT FK_DAILY_PHYSIQUE_MEASUREMENTS 
	FOREIGN KEY (DAY_id) REFERENCES DAY (DAY_id); 
	
CREATE SEQUENCE SEQ_DAILY_PHYSIQUE_MEASUREMENTS  
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE DAILY_MEAL_DIARY
(
	DMD_id 	BIGINT NOT NULL,
	DAY_id 		BIGINT NOT NULL
);

ALTER TABLE DAILY_MEAL_DIARY ADD CONSTRAINT PK_DAILY_MEAL_DIARY 
	PRIMARY KEY (DMD_id); 

ALTER TABLE DAILY_MEAL_DIARY ADD CONSTRAINT FK_DAILY_MEAL_DIARY 
	FOREIGN KEY (DAY_id) REFERENCES DAY (DAY_id); 
	
CREATE SEQUENCE SEQ_DAILY_MEAL_DIARY  
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE DAILY_MACRO_BALANCE
(
	DMAB_id 											BIGINT 		NOT NULL,
	DMAB_calories_amount 					DECIMAL 	NOT NULL, 
	DMAB_carbohydrates_amount 		DECIMAL 	NOT NULL,
	DMAB_proteins_amount 				DECIMAL 	NOT NULL,
	DMAB_fats_amount 						DECIMAL 	NOT NULL,
	DMAB_fiber_amount 						DECIMAL 	NOT NULL,
	DMAB_sugar_amount 					DECIMAL 	NOT NULL,
	DMD_id 											BIGINT 		NOT NULL
);

ALTER TABLE DAILY_MACRO_BALANCE ADD CONSTRAINT PK_DAILY_MACRO_BALANCE 
	PRIMARY KEY (DMAB_id); 

ALTER TABLE DAILY_MACRO_BALANCE ADD CONSTRAINT FK_DAILY_MACRO_BALANCE 
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_DAILY_MACRO_BALANCE 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



CREATE TABLE DAILY_MICRO_BALANCE
(
	DMIB_id 							BIGINT 		NOT NULL,
	DMIB_magnesium			DECIMAL 	NOT NULL,
	DMIB_calcium					DECIMAL 	NOT NULL,
	DMIB_iron						DECIMAL 	NOT NULL,
	DMIB_pottasium 			DECIMAL 	NOT NULL,
	DMIB_zinc 			 			DECIMAL 	NOT NULL,
	DMIB_chromium   			DECIMAL 	NOT NULL,
	DMIB_vitamin_b12   		DECIMAL 	NOT NULL,
	DMIB_vitamin_a   			DECIMAL 	NOT NULL,
	DMIB_vitamin_d   			DECIMAL 	NOT NULL,
	DMIB_vitamin_e   			DECIMAL 	NOT NULL,
	DMIB_vitamin_k   			DECIMAL 	NOT NULL,
	DMIB_omega_3   			DECIMAL 	NOT NULL,
	DMD_id 							BIGINT 		NOT NULL
);

ALTER TABLE DAILY_MICRO_BALANCE ADD CONSTRAINT PK_DAILY_MICRO_BALANCE 
	PRIMARY KEY (DMIB_id); 

ALTER TABLE DAILY_MICRO_BALANCE ADD CONSTRAINT FK_DAILY_MICRO_BALANCE 
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_DAILY_MICRO_BALANCE 
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	
CREATE TABLE MEAL1
(
	MEA1_id 		BIGINT NOT NULL,
	DMD_id 		BIGINT NOT NULL
);

ALTER TABLE MEAL1 ADD CONSTRAINT PK_MEAL1
	PRIMARY KEY (MEA1_id); 

ALTER TABLE MEAL1 ADD CONSTRAINT FK_MEAL1
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_MEAL1
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
	
CREATE TABLE INGREDIENT1
(
	ING1_id 					BIGINT 		NOT NULL,
	ING1_multiplier 		DECIMAL 	NOT NULL,
	PRO_id 					BIGINT 		NOT NULL,
	MEA1_id 					BIGINT 		NOT NULL
);

ALTER TABLE INGREDIENT1 ADD CONSTRAINT PK_INGREDIENT1 
	PRIMARY KEY (ING1_id); 

ALTER TABLE INGREDIENT1 ADD CONSTRAINT FK_INGREDIENT1_1
	FOREIGN KEY (PRO_id) REFERENCES PRODUCT (PRO_id); 
	
ALTER TABLE INGREDIENT1 ADD CONSTRAINT FK_INGREDIENT1_2
	FOREIGN KEY (MEA1_id) REFERENCES MEAL1 (MEA1_id); 
	
CREATE SEQUENCE SEQ_INGREDIENT1
	INCREMENT BY 1 START WITH 1 MINVALUE 1;


	
	
CREATE TABLE MEAL2
(
	MEA2_id 		BIGINT NOT NULL,
	DMD_id 		BIGINT NOT NULL
);

ALTER TABLE MEAL2 ADD CONSTRAINT PK_MEAL2
	PRIMARY KEY (MEA2_id); 

ALTER TABLE MEAL2 ADD CONSTRAINT FK_MEAL2
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_MEAL2
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
CREATE TABLE INGREDIENT2
(
	ING2_id 					BIGINT 		NOT NULL,
	ING2_multiplier 		DECIMAL 	NOT NULL,
	PRO_id 					BIGINT 		NOT NULL,
	MEA2_id 					BIGINT 		NOT NULL
);

ALTER TABLE INGREDIENT2 ADD CONSTRAINT PK_INGREDIENT2 
	PRIMARY KEY (ING2_id); 

ALTER TABLE INGREDIENT2 ADD CONSTRAINT FK_INGREDIENT2_1
	FOREIGN KEY (PRO_id) REFERENCES PRODUCT (PRO_id); 
	
ALTER TABLE INGREDIENT2 ADD CONSTRAINT FK_INGREDIENT2_2
	FOREIGN KEY (MEA2_id) REFERENCES MEAL2 (MEA2_id); 
	
CREATE SEQUENCE SEQ_INGREDIENT2
	INCREMENT BY 1 START WITH 1 MINVALUE 1;



	
CREATE TABLE MEAL3
(
	MEA3_id 		BIGINT NOT NULL,
	DMD_id 		BIGINT NOT NULL
);

ALTER TABLE MEAL3 ADD CONSTRAINT PK_MEAL3
	PRIMARY KEY (MEA3_id); 

ALTER TABLE MEAL3 ADD CONSTRAINT FK_MEAL3
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_MEAL3
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
CREATE TABLE INGREDIENT3
(
	ING3_id 					BIGINT 		NOT NULL,
	ING3_multiplier 		DECIMAL 	NOT NULL,
	PRO_id 					BIGINT 		NOT NULL,
	MEA3_id 					BIGINT 		NOT NULL
);

ALTER TABLE INGREDIENT3 ADD CONSTRAINT PK_INGREDIENT3 
	PRIMARY KEY (ING3_id); 

ALTER TABLE INGREDIENT3 ADD CONSTRAINT FK_INGREDIENT3_1
	FOREIGN KEY (PRO_id) REFERENCES PRODUCT (PRO_id); 
	
ALTER TABLE INGREDIENT3 ADD CONSTRAINT FK_INGREDIENT3_2
	FOREIGN KEY (MEA3_id) REFERENCES MEAL3 (MEA3_id); 
	
CREATE SEQUENCE SEQ_INGREDIENT3
	INCREMENT BY 1 START WITH 1 MINVALUE 1;	


	
CREATE TABLE MEAL4
(
	MEA4_id 		BIGINT NOT NULL,
	DMD_id 		BIGINT NOT NULL
);

ALTER TABLE MEAL4 ADD CONSTRAINT PK_MEAL4
	PRIMARY KEY (MEA4_id); 

ALTER TABLE MEAL4 ADD CONSTRAINT FK_MEAL4
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_MEAL4
	INCREMENT BY 1 START WITH 1 MINVALUE 1;

CREATE TABLE INGREDIENT4
(
	ING4_id 					BIGINT 		NOT NULL,
	ING4_multiplier 		DECIMAL 	NOT NULL,
	PRO_id 					BIGINT 		NOT NULL,
	MEA4_id 					BIGINT 		NOT NULL
);

ALTER TABLE INGREDIENT4 ADD CONSTRAINT PK_INGREDIENT4 
	PRIMARY KEY (ING4_id); 

ALTER TABLE INGREDIENT4 ADD CONSTRAINT FK_INGREDIENT4_1
	FOREIGN KEY (PRO_id) REFERENCES PRODUCT (PRO_id); 
	
ALTER TABLE INGREDIENT4 ADD CONSTRAINT FK_INGREDIENT4_2
	FOREIGN KEY (MEA4_id) REFERENCES MEAL4 (MEA4_id); 
	
CREATE SEQUENCE SEQ_INGREDIENT4
	INCREMENT BY 1 START WITH 1 MINVALUE 1;	

	
	
CREATE TABLE MEAL5
(
	MEA5_id 		BIGINT NOT NULL,
	DMD_id 		BIGINT NOT NULL
);

ALTER TABLE MEAL5 ADD CONSTRAINT PK_MEAL5
	PRIMARY KEY (MEA5_id); 

ALTER TABLE MEAL5 ADD CONSTRAINT FK_MEAL5
	FOREIGN KEY (DMD_id) REFERENCES DAILY_MEAL_DIARY (DMD_id); 
	
CREATE SEQUENCE SEQ_MEAL5
	INCREMENT BY 1 START WITH 1 MINVALUE 1;
	
CREATE TABLE INGREDIENT5
(
	ING5_id 					BIGINT 		NOT NULL,
	ING5_multiplier 		DECIMAL 	NOT NULL,
	PRO_id 					BIGINT 		NOT NULL,
	MEA5_id 					BIGINT 		NOT NULL
);

ALTER TABLE INGREDIENT5 ADD CONSTRAINT PK_INGREDIENT5 
	PRIMARY KEY (ING5_id); 

ALTER TABLE INGREDIENT5 ADD CONSTRAINT FK_INGREDIENT5_1
	FOREIGN KEY (PRO_id) REFERENCES PRODUCT (PRO_id); 
	
ALTER TABLE INGREDIENT5 ADD CONSTRAINT FK_INGREDIENT5_2
	FOREIGN KEY (MEA5_id) REFERENCES MEAL5 (MEA5_id); 
	
CREATE SEQUENCE SEQ_INGREDIENT5
	INCREMENT BY 1 START WITH 1 MINVALUE 1;	
	

	

