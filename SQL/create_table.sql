/*사용자*/
DROP TABLE IF EXISTS `app`.`user`;
CREATE TABLE `app`.`user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `email` varchar(50) NOT NULL COMMENT '이메일',
  `enc_password` varchar(200) NOT NULL COMMENT '암호화된 비밀번호',
  `nickname` varchar(50) NOT NULL COMMENT '닉네임',
  `sex` varchar(1) NOT NULL COMMENT '성별 (M/F)',
  `phone` varchar(20) NOT NULL COMMENT '핸드폰번호',
  `name` varchar(50) NOT NULL COMMENT '성명',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='사용자';

DROP TABLE IF EXISTS `app`.`role`;
CREATE TABLE `app`.`role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `name` varchar(30) NOT NULL COMMENT '권한명',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='권한';

DROP TABLE IF EXISTS `app`.`user_role`;
CREATE TABLE `app`.`user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `id_user` int(11) NOT NULL COMMENT '사용자 테이블 Row ID',
  `id_role` int(11) NOT NULL COMMENT '권한 테이블 Row ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`id_user`, `id_role`),
  FOREIGN KEY (`id_user`) REFERENCES `app`.`user` (`id`),
  FOREIGN KEY (`id_role`) REFERENCES `app`.`role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='사용자와 권한에 대한 관계 테이블';

/*게시판*/
DROP TABLE IF EXISTS `app`.`board`;
CREATE TABLE `app`.`board` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `id_user` int(11) NOT NULL COMMENT '사용자 테이블 Row ID',
  `type` varchar(50) NOT NULL COMMENT '게시판 유형 (FT/ST)',
  `category` varchar(50) NOT NULL COMMENT '게시판 카테고리 (game/small-talk/info)',
  `visibility` varchar(50) NOT NULL COMMENT '공개범위 (public/private)',
  `title` varchar(200) NOT NULL COMMENT '제목',
  `content` text NOT NULL COMMENT '내용',
  `hits` int(10) NOT NULL COMMENT '조회수',
  `comments` int(10) NOT NULL COMMENT '댓글수',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_user`) REFERENCES `app`.`user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='게시판';

/*댓글*/
DROP TABLE IF EXISTS `app`.`comment`;
CREATE TABLE `app`.`comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `id_board` int(11) NOT NULL COMMENT '게시판 테이블 Row ID',
  `id_user` int(11) NOT NULL COMMENT '사용자 테이블 Row ID',
  `content` varchar(500) NOT NULL COMMENT '내용',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_user`) REFERENCES `app`.`user` (`id`),
  FOREIGN KEY (`id_board`) REFERENCES `app`.`board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='댓글';

/*파일*/
DROP TABLE IF EXISTS `app`.`file`;
CREATE TABLE `app`.`file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `id_parent` int(11) NOT NULL COMMENT '상위 테이블 Row ID',
  `original_filename` varchar(100) NOT NULL COMMENT '원본파일명',
  `mime_type` varchar(50) NOT NULL COMMENT '마임타입 (image/png, image/jpeg 등)',
  `path` varchar(200) NOT NULL COMMENT '경로',
  `filename` varchar(100) NOT NULL COMMENT '파일명',
  `size` int(10) NOT NULL COMMENT '크기',
  `seq` tinyint(1) NOT NULL COMMENT '디스플레이 순서',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename_UNIQUE` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='파일';

/*사용자 접근 히스토리*/
DROP TABLE IF EXISTS `app`.`user_access_log`;
CREATE TABLE `app`.`user_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `email` varchar(50) NOT NULL COMMENT '이메일',
  `enc_password` varchar(200) NOT NULL COMMENT '암호화된 비밀번호',
  `source_ip` varchar(45) NOT NULL COMMENT '소스 아이피',
  `browser_info` text NOT NULL COMMENT '브라우저 정보',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='사용자 접근 히스토리';

/*서비스 히스토리*/
DROP TABLE IF EXISTS `app`.`service_log`;
CREATE TABLE `app`.`service_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `id_service_log` int(11) COMMENT '서비스 히스토리 테이블 상위 Row ID',
  `job_code` varchar(10) NOT NULL COMMENT '잡 코드',
  `source_ip` varchar(45) NOT NULL COMMENT '소스 아이피',
  `success` tinyint(1) NOT NULL COMMENT '성공 여부 (1:성공, 0:실패)',
  `http_req_info` text COMMENT 'HTTP Request 정보',
  `http_res_info` text COMMENT 'HTTP Response 정보',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='서비스 히스토리';

/*공통코드*/
DROP TABLE IF EXISTS `com`.`code`;
CREATE TABLE `com`.`code` (
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그 (1:활성, 0:삭제)',
  
  `group_code` varchar(50) NOT NULL COMMENT '그룹 코드',
  `code_value` varchar(50) NOT NULL COMMENT '코드 값',
  `mark_value` varchar(50) NOT NULL COMMENT '표기 값',
  `lang_code` varchar(2) NOT NULL COMMENT '언어 코드',
  PRIMARY KEY (`group_code`, `code_value`, `lang_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='코드';