-- <実行内容>
-- 以下の要件を満たした内容を出力すること
-- ・ユーザー名、投稿日時、チャットルーム名を表示すること
-- ・各チャットルームの最新の投稿をしたユーザー名と投稿日時を表示すること
-- ・削除されているユーザーの投稿、削除されている投稿は含まないこと
-- ・チャットルームidの昇順で表示

SELECT 
削除済US.screen_name AS ユーザー名,
削除済MS.updated_at AS 投稿日時 , 削除済RM.name AS チャットルーム名
FROM  
(SELECT * FROM `messages` WHERE is_deleted=0) AS 削除済MS
JOIN 
(SELECT * FROM `users` WHERE is_deleted=0) AS 削除済US
ON 削除済MS.update_user_id = 削除済US.id
JOIN 
(SELECT * FROM `rooms` WHERE is_deleted=0) AS 削除済RM
ON 削除済MS.room_id = 削除済RM.id
ORDER BY 削除済RM.id ASC
