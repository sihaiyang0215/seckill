-- db initialize script

CREATE DATABASE seckill;

use seckill;
CREATE TABLE seckill(
  `seckill_id` BIGINT NOT NUll AUTO_INCREMENT COMMENT 'inventory id',
  `name` VARCHAR(120) NOT NULL COMMENT 'goods name',
  `number` int NOT NULL COMMENT 'goods inventory number',
  `start_time` TIMESTAMP  NOT NULL COMMENT 'seckill starttime',
  `end_time`   TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'seckill endtime',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='seckill inventory table';

-- db initialize
INSERT into seckill(name,number,start_time,end_time)
VALUES
  ('xbox $100',100,'2018-01-01 00:00:00','2018-01-02 00:00:00'),
  ('iPhone X $100',200,'2018-01-01 00:00:00','2018-01-02 00:00:00'),
  ('PS4 $100',100,'2018-01-01 00:00:00','2018-01-02 00:00:00'),
  ('iPad $120',100,'2018-01-01 00:00:00','2018-01-02 00:00:00');

-- Success Killed Table
-- User ID(use phone number)
CREATE TABLE success_killed(
  `seckill_id` BIGINT NOT NULL COMMENT 'goods id',
  `user_phone` BIGINT NOT NULL COMMENT 'user phone number',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT 'tag:-1:fail 0:success 1:pay 2:shipping',
  `create_time` TIMESTAMP NOT NULL COMMENT 'create time',
  PRIMARY KEY(seckill_id, user_phone),
  KEY idx_create_time(create_time)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='success killed table';

--mysql -uroot -p