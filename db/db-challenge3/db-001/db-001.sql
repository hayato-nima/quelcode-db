-- ユーザー情報シートに記載されているデータを登録すること
-- 空項目はNULLとする

-- id=1 admin
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `introduce`, `company_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'admin','admin@labot.inc','admin','このスペースの管理者です。','00-0000-0000',0,'2020-04-20 15:47:52','2020-04-20 15:47:52'
    );

-- id=2 mysql
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `mobile_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'mysql','mysql@labot.inc','mysql55','080-1234-1253',0,'2022-04-22 16:02:55','2022-04-22 16:02:55'
    );

-- id=3 sqlserver
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `introduce`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'sqlserver','sqlserver@labot.inc','apple','オラクルデータベースが好きです。',0,'2020-04-22 17:32:55','2020-04-22 17:32:55'
    );

-- id=4 mariadb
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `company_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'mariadb','mariadb@labot.inc','maria','03-6666-5879',0,'2020-04-22 18:45:21','2020-04-22 18:45:21'
    );

-- id=5 laravel
INSERT INTO `users`(
  `screen_name`, `email`, `password`,  `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'laravel','laravel@labot.inc','lara',0,'2020-04-22 18:46:01','2020-04-22 18:46:01'
    );

-- id=6 cake
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `company_phone_number`,`mobile_phone_number`,`is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'cake','cakephp@labot.inc','cake89','03-987-1234','090-5555-7854',0,'2020-04-23 02:51:06','2020-04-25 11:45:06'
    );

-- id=7 react
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'react','react@labot.inc','node',0,'2020-04-23 09:54:32','2020-04-23 09:54:32'
    );

-- id=8 html5
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `mobile_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'html5','html@labot.inc','css3','080-5849-5555',0,'2020-04-23 09:55:14','2020-04-23 09:55:14'
    );

-- id=9 php
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `introduce`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'php','php@labot.inc','php7','伝説のphp6',0,'2020-04-24 01:01:06','2020-04-24 01:01:06'
    );

-- id=10 js
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `introduce`, `company_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'js','javascript@labot.inc','react','Hello world','0120-555-458',0,'2020-04-24 05:03:58','2020-04-24 05:03:58'
    );

-- id=11 amazon
INSERT INTO `users`(
  `screen_name`, `email`, `password`, `introduce`, `mobile_phone_number`, `is_deleted`, `created_at`, `updated_at`
  ) VALUES (
    'amazon','microsoft@gmail.com','google','facebook','080-9999-5555',1,'2020-04-24 06:00:02','2020-04-26 12:13:43'
    );