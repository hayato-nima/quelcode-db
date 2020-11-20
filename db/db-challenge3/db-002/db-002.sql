-- チャットルームシートに記載されているデータを登録すること

-- id=1 りんご
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'りんご','利用者の集まり',1,0,0,'2020-04-21 11:26:32',1,'2020-04-21 11:26:32',1
);

-- id=2 ごりら
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'ごりら','sqlの集まり',1,0,0,'2020-04-23 15:42:05',2,'2020-04-23 15:42:05',2
);

-- id=3 らっぱ
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'らっぱ','言語の集まり',1,0,0,'2020-04-24 11:03:16',8,'2020-04-25 10:33:55',9
);

-- id=4 ぱんだ
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'ぱんだ','フレームワークの集まり',0,0,0,'2020-04-23 18:14:28',5,'2020-04-24 20:33:06',7
);

-- id=5 ごま
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
   ) VALUES (
   'ごま','adminとmysqlのダイレクトチャット',1,1,0,'2020-04-23 14:34:58',1,'2020-04-23 14:34:58',1
   );

-- id=6 まり
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'まり','adminとsqlserverのダイレクトチャット',0,1,0,'2020-04-23 14:45:22',1,'2020-04-23 14:45:22',1
);

-- id=7 りす
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'りす','adminとjsのダイレクトチャット',1,1,0,'2020-04-24 10:55:21',1,'2020-04-24 10:55:21',1
);

-- id=8 かめ
INSERT INTO `rooms`(
   `name`, `summary`, `is_file_sendable`, `is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id`
) VALUES (
   'かめ','adminとamazonのダイレクトチャット',1,1,1,'2020-04-24 11:02:20',1,'2020-04-27 15:41:33',1
);
   