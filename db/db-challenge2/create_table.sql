-- ユーザー
CREATE TABLE `users` (
      `id` int(11)  NOT NULL AUTO_INCREMENT,
      `screen_name` varchar(100) NOT NULL,
      `email` varchar(100) NOT NULL,
      `password` varchar(100) NOT NULL,
      `introduce` varchar(1000)  NULL,
      `company_phone_number` varchar(15)  NULL,
      `mobile_phone_number` varchar(15)  NULL,
      `is_deleted` tinyint(1)  NOT NULL DEFAULT 0, 
      `created_at` datetime NOT NULL,
      `updated_at` datetime NOT NULL,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- 入室記録
CREATE TABLE `entry_records` (
      `user_id` int(11) NOT NULL,
      `room_id` int(11) NOT NULL,
      `entered_at` datetime NOT NULL,
      PRIMARY KEY (`user_id`,`room_id`),
      FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
      FOREIGN KEY(`room_id`) REFERENCES `rooms`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- チャットルーム
CREATE TABLE `rooms` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `name` varchar(100) NOT NULL,
      `summary` varchar(1000)  NULL,
      `permission_to_send_file` tinyint(1) NOT NULL DEFAULT 0,
      `direct_chat_room_entry` tinyint(1) NOT NULL DEFAULT 0,
      `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
      `created_at` datetime NOT NULL,
      `create_user_id` int(11) NOT NULL,
      `updated` datetime NOT NULL,
      `update_user_id` int(11) NOT NULL,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- チャットメッセージ
CREATE TABLE `messages` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `room_id` int(11) NOT NULL,
      `message` varchar(1000) NOT NULL,
      `file_name` varchar(100) NULL,
      `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
      `posted_at` datetime NOT NULL,
      `post_user_id` int(11) NOT NULL,
      `updated` datetime NOT NULL,
      `update_user_id` int(11) NOT NULL,
      PRIMARY KEY (`id`),
      FOREIGN KEY(`room_id`) -- 外部キー
      REFERENCES `rooms`(`id`) -- roomsテーブル.id
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- タスク
CREATE TABLE `tasks` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `room_id` int(11) NOT NULL,
      `content` varchar(1000) NOT NULL,
      `is_undertaked_user_id` int(11) NOT NULL,
      `deadline_at` datetime NULL,
      `is_completed_task` tinyint(1) NOT NULL DEFAULT 0,
      `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
      `created_at` datetime NOT NULL,
      `create_user_id` int(11) NOT NULL,
      `updated` datetime NOT NULL,
      `update_user_id` int(11) NOT NULL,
      PRIMARY KEY (`id`),
      FOREIGN KEY(`room_id`) -- 外部キー
      REFERENCES `rooms`(`id`) -- roomsテーブル.id
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


