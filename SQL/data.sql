/*Code data*/
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
/*공개범위*/
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'VISIBILITY','PUBLIC','공개','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'VISIBILITY','PUBLIC','Public','en');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'VISIBILITY','PRIVATE','비공개','ko');
INSERT INTO `com`.`code` (`create_date`,`modify_date`,`flag`,`group_code`,`code_value`,`mark_value`,`lang_code`)
VALUES (now(),now(),1,'VISIBILITY','PRIVATE','Private','en');

/*Application sample data*/
/*사용자*/
INSERT INTO `app`.`user` (`id`,`create_date`,`modify_date`,`flag`,`email`,`enc_password`,`nickname`,`sex`,`phone`,`name`)
VALUES (1,now(),now(),1,'admin@jslee.com','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','관리자','M','010-1111-2222','이준석');
INSERT INTO `app`.`user` (`id`,`create_date`,`modify_date`,`flag`,`email`,`enc_password`,`nickname`,`sex`,`phone`,`name`)
VALUES (2,now(),now(),1,'user01@jslee.com','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','사용자01','M','010-2222-3333','이진영');
INSERT INTO `app`.`user` (`id`,`create_date`,`modify_date`,`flag`,`email`,`enc_password`,`nickname`,`sex`,`phone`,`name`)
VALUES (3,now(),now(),1,'user02@jslee.com','$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu','사용자02','F','010-3333-4444','이혜정');

/*권한*/
INSERT INTO `app`.`role` (`id`,`create_date`,`modify_date`,`flag`,`name`)
VALUES (1,now(),now(),1,'ROLE_ADMIN');
INSERT INTO `app`.`role` (`id`,`create_date`,`modify_date`,`flag`,`name`)
VALUES (2,now(),now(),1,'ROLE_USER');

/*사용자와 권한에 대한 관계 테이블*/
INSERT INTO `app`.`user_role` (`id`,`create_date`,`modify_date`,`flag`,`id_user`,`id_role`)
VALUES (1,now(),now(),1,1,1);
INSERT INTO `app`.`user_role` (`id`,`create_date`,`modify_date`,`flag`,`id_user`,`id_role`)
VALUES (2,now(),now(),1,1,2);
INSERT INTO `app`.`user_role` (`id`,`create_date`,`modify_date`,`flag`,`id_user`,`id_role`)
VALUES (3,now(),now(),1,2,2);
INSERT INTO `app`.`user_role` (`id`,`create_date`,`modify_date`,`flag`,`id_user`,`id_role`)
VALUES (4,now(),now(),1,3,2);

/*게시판*/
INSERT INTO `app`.`board` (`id`,`create_date`,`modify_date`,`flag`,`id_user`,`type`,`category`,`visibility`,`title`,`content`,`hits`,`comments`)
VALUES (<{id: }>,now(),now(),1,<{id_user: }>,<{type: }>,<{category: }>,<{visibility: }>,<{title: }>,<{content: }>,<{hits: }>,<{comments: }>);

/*댓글*/
INSERT INTO `app`.`comment` (`id`,`create_date`,`modify_date`,`flag`,`id_board`,`id_user`,`content`)
VALUES (<{id: }>,now(),now(),1,<{id_board: }>,<{id_user: }>,<{content: }>);

/*파일*/
INSERT INTO `app`.`file` (`id`,`create_date`,`modify_date`,`flag`,`id_parent`,`original_filename`,`mime_type`,`path`,`filename`,`size`,`seq`)
VALUES (<{id: }>,now(),now(),1,<{id_parent: }>,<{original_filename: }>,<{mime_type: }>,<{path: }>,<{filename: }>,<{size: }>,<{seq: }>);