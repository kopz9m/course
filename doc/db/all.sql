CREATE TABLE `chapter`
(
    `id`        CHAR(8)     NOT NULL COMMENT 'ID' COLLATE 'utf8mb4_0900_ai_ci',
    `course_id` CHAR(8)     NULL DEFAULT NULL COMMENT '课程ID' COLLATE 'utf8mb4_0900_ai_ci',
    `name`      VARCHAR(50) NULL DEFAULT NULL COMMENT '名称' COLLATE 'utf8mb4_0900_ai_ci',
    PRIMARY KEY (`id`) USING BTREE
)
    COMMENT ='大章'
    COLLATE = 'utf8mb4_0900_ai_ci'
    ENGINE = InnoDB
;


INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('03', '03', '大章测试03');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('04', '04', '大章测试04');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('05', '05', '大章测试05');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('06', '06', '大章测试06');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('07', '07', '大章测试07');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('08', '08', '大章测试08');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('09', '09', '大章测试09');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('10', '10', '大章测试10');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('11', '11', '大章测试11');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('12', '12', '大章测试12');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('13', '13', '大章测试13');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('14', '14', '大章测试14');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('15', '15', '大章测试15');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('16', '16', '大章测试16');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('17', '17', '大章测试17');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('18', '18', '大章测试18');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('19', '19', '大章测试19');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('20', '20', '大章测试20');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('21', '21', '大章测试21');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('22', '22', '大章测试22');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('23', '23', '大章测试23');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('24', '24', '大章测试24');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('25', '25', '大章测试25');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('26', '26', '大章测试26');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('27', '27', '大章测试27');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('28', '28', '大章测试28');
INSERT INTO `course`.`chapter` (`id`, `course_id`, `name`)
VALUES ('29', '29', '大章测试29');



CREATE TABLE `section`
(
    `id`         CHAR(8)      NOT NULL DEFAULT '' COMMENT 'ID' COLLATE 'utf8mb4_0900_ai_ci',
    `title`      VARCHAR(50)  NOT NULL COMMENT '标题' COLLATE 'utf8mb4_0900_ai_ci',
    `course_id`  CHAR(8)      NULL     DEFAULT NULL COMMENT '课程' COLLATE 'utf8mb4_0900_ai_ci',
    `chapter_id` CHAR(8)      NULL     DEFAULT NULL COMMENT '大章' COLLATE 'utf8mb4_0900_ai_ci',
    `video`      VARCHAR(200) NULL     DEFAULT NULL COMMENT '视频' COLLATE 'utf8mb4_0900_ai_ci',
    `time`       INT(10)      NULL     DEFAULT NULL COMMENT '时长 单位秒',
    `charge`     CHAR(1)      NULL     DEFAULT NULL COMMENT 'C 收费 F免费' COLLATE 'utf8mb4_0900_ai_ci',
    `sort`       INT(10)      NULL     DEFAULT NULL COMMENT '顺序',
    `created_at` DATETIME(3)  NULL     DEFAULT NULL COMMENT '创建时间',
    `updated_at` DATETIME(3)  NULL     DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
)
    COMMENT ='小节'
    COLLATE = 'utf8mb4_0900_ai_ci'
    ENGINE = InnoDB
;


drop table if exists course;
create table course
(
    id         char(8)       not null default '' comment 'id',
    name       varchar(50)   not null comment '名称',
    summary    varchar(2000) comment '概述',
    time       int                    default 0 comment '时长|单位秒',
    price      decimal(8, 2) not null default 0.00 comment '价格(元)',
    image      varchar(100) comment '封面',
    level      char(1)       not null comment '级别|ONE("1 ","初级"),TWO("2","中级"),THREE("3 "," 高级")',
    charge     char(1) comment '收费ICHARGE("C","收费"),FREE(" F "," 免费 ")',
    status     char(1) comment '状态|PUBLISH(" P "," 发布") ,DRAFT("D","草稿")',
    enroll     integer                default 0 comment '报名数',
    sort       int comment '顺序',
    created_at datetime(3) comment '创建时间',
    updated_at datetime(3) comment '修改时间',
    primary key (id)
) COMMENT ='课程表'
    COLLATE = 'utf8mb4_0900_ai_ci'
    ENGINE = InnoDB;

ALTER TABLE `course`
    ADD COLUMN `teacher_id` CHAR(8)  COMMENT '讲师id';


drop table if exists category;
create table category
(
    id     char(8)     not null default '' comment 'id',
    parent char(8)     not null default '' comment '父id',
    name   varchar(50) not null comment '名称',
    sort   int comment '顺序',
    primary key (id)
) COMMENT ='分类'
    COLLATE = 'utf8mb4_0900_ai_ci'
    ENGINE = InnoDB;


insert into category (id, parent, name, sort)
values ('00000100', '00000000', '前端技术', 100);
insert into category (id, parent, name, sort)
values ('00000101', '00000100', 'html/css', 101);
insert into category (id, parent, name, sort)
values ('00000102', '00000100', 'javascript', 102);
insert into category (id, parent, name, sort)
values ('00000103', '00000100', 'vue.js', 103);
insert into category (id, parent, name, sort)
values ('00000104', '00000100', 'react.is', 104);
insert into category (id, parent, name, sort)
values ('00000105', '00000100', 'angular', 105);
insert into category (id, parent, name, sort)
values ('00000106', '00000100', 'node.is', 106);
insert into category (id, parent, name, sort)
values ('00000107', '00000100', 'jquery', 107);
insert into category (id, parent, name, sort)
values ('00000108', '00000100', '小程序', 108);
insert into category (id, parent, name, sort)
values ('00000200', '00000000', '后端技术', 200);
insert into category (id, parent, name, sort)
values ('00000201', '00000200', 'java', 201);
insert into category (id, parent, name, sort)
values ('00000202', '00000200', 'springboot', 202);
insert into category (id, parent, name, sort)
values ('00000203', '00000200', 'spring cloud', 203);
insert into category (id, parent, name, sort)
values ('00000204', '00000200', 'ssm', 204);
insert into category (id, parent, name, sort)
values ('00000205', '00000200', 'python', 205);


#课程内容
drop table if exists `course content`;
create table `course content`
(
    id        char(8)    not null default '' comment '课程id',
    'content' mediumtext not null comment '课程内容',
    primary key (id)
) COMMENT ='课程内容'
    COLLATE = 'utf8mb4_0900_ai_ci'
    ENGINE = InnoDB;


--	讲师
drop table if exists `teacher`;
create table `teacher`
(
    id       char(8)     not null default '' comment 'id',
    name     varchar(50) not null comment '姓名',
    nickname varchar(50) comment '昵称',
    image    varchar(100) comment '头像',
    position varchar(50) comment '职位',
    motto    varchar(50) comment '座右铭',
    intro    varchar(500) comment '简介',
    primary key (id)
) COLLATE = 'utf8mb4_0900_ai_ci'
  ENGINE = InnoDB
    comment ='讲师';



