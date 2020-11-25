-- <実行内容>
-- 以下の要件を満たした内容を出力すること
-- ・ユーザー名、投稿日時、チャットルーム名を表示すること
-- ・各チャットルームの最新の投稿をしたユーザー名と投稿日時を表示すること
-- ・削除されているユーザーの投稿、削除されている投稿は含まないこと
-- ・チャットルームidの昇順で表示

-- 問題11〜14でデータベースの値を変更している為、 test2というデータベースを問題1〜9同じ内容で作成し、実行しています

SELECT tablesA.screen_name AS ユーザー名,
       tablesA.updated_at AS 投稿日時（最新）,
       tablesA.name AS チャットルーム名
FROM
(
SELECT 削除済messages.update_user_id,削除済messages.room_id,削除済messages.updated_at,削除済users.screen_name, 削除済rooms.id,削除済rooms.name
FROM 
(SELECT messages.id , messages.update_user_id , messages.room_id ,updated_at FROM `messages` WHERE is_deleted=0) AS 削除済messages
JOIN 
(SELECT users.id , users.screen_name FROM `users` WHERE is_deleted=0) AS 削除済users
ON 削除済messages.update_user_id = 削除済users.id
JOIN 
(SELECT rooms.id, rooms.name FROM `rooms` WHERE is_deleted=0) AS 削除済rooms
ON 削除済messages.room_id = 削除済rooms.id
) AS tablesA
INNER JOIN(
    	SELECT  rooms.name               AS ルーム 
	       ,MAX(messagesB.updated_at) AS 最新日時
	FROM rooms
	JOIN (SELECT * FROM `messages` WHERE is_deleted=0) AS messagesB
	ON rooms.id = messagesB.room_id
	GROUP BY  rooms.name 
    ) as tablesB
    ON tablesA.name = tablesB.ルーム
    and tablesA.updated_at = tablesB.最新日時
ORDER BY tablesA.id ASC;


