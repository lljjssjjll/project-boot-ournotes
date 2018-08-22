/*공통코드*/
/*성별*/
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'SEX','M','남자','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'SEX','M','Male','en');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'SEX','F','여자','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'SEX','F','Female','en');
/*게시판 유형*/
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_TYPE','FT','자유 대화','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_TYPE','FT','Free talk','en');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_TYPE','ST','잡담','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_TYPE','ST','Small talk','en');
/*게시판 카테고리*/
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','GAME','게임','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','GAME','Game','en');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','SMALL-TALK','잡담','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','SMALL-TALK','Small talk','en');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','INFO','정보','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'BOARD_CATEGORY','INFO','Information','en');

/*Application Data*/