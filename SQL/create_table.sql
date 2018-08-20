/*사용자*/
DROP TABLE IF EXISTS `app`.`user`;
CREATE TABLE `app`.`user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그',
  
  `email` varchar(50) NOT NULL COMMENT '이메일',
  `password` varchar(200) NOT NULL COMMENT '비밀번호',
  `nickname` varchar(50) NOT NULL COMMENT '닉네임',
  `sex` varchar(1) NOT NULL COMMENT '성별 (M/F)',
  `phone` varchar(20) NOT NULL COMMENT '핸드폰번호',
  `name` varchar(50) NOT NULL COMMENT '성명',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='사용자';

/*게시판*/
DROP TABLE IF EXISTS `app`.`board`;
CREATE TABLE `app`.`board` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그',
  
  `id_user` int(11) NOT NULL COMMENT '사용자 테이블 Row ID',
  `type` varchar(50) NOT NULL COMMENT '유형 (FT/ST)',
  `category` varchar(50) NOT NULL COMMENT '카테고리 (game/small-talk/info)',
  `visibility` varchar(50) NOT NULL COMMENT '공개범위 (public/private)',
  `title` varchar(200) NOT NULL COMMENT '제목',
  `content` text NOT NULL COMMENT '내용',
  `hits` int(11) NOT NULL COMMENT '조회수',
  `comments` int(11) NOT NULL COMMENT '댓글수',
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_user`) REFERENCES `app`.`user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='게시판';

/*댓글*/
DROP TABLE IF EXISTS `app`.`comment`;
CREATE TABLE `app`.`comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Row ID',
  `create_date` datetime NOT NULL COMMENT '생성일시',
  `modify_date` datetime NOT NULL COMMENT '수정일시',
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그',
  
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
  `flag` tinyint(1) NOT NULL COMMENT '논리 삭제 플래그',
  
  `id_parent` int(11) NOT NULL COMMENT '상위 테이블 Row ID',
  `original_filename` varchar(100) NOT NULL COMMENT '원본파일명',
  `mime_type` varchar(100) NOT NULL COMMENT '마임타입 (image/png, image/jpeg 등)',
  `path` varchar(200) NOT NULL COMMENT '경로',
  `filename` varchar(100) NOT NULL COMMENT '파일명',
  `size` int(10) NOT NULL COMMENT '크기',
  `seq` tinyint(1) NOT NULL COMMENT '디스플레이 순서',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='파일';