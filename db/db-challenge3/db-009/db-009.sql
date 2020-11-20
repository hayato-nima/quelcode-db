-- <実行内容>
-- 以下の要件を満たした内容を出力すること
-- ・各チャットルームの投稿数、チャットルーム名を表示すること
-- ・「投稿数」という名前で投稿数を表示すること
-- ・削除されているユーザ－の投稿、削除されている投稿は含まないこと
-- ・投稿数の降順で表示

SELECT  COUNT(*)   AS 投稿数
       ,rooms.name AS チャットルーム名
FROM 
(
	SELECT  *
	FROM `messages`
	WHERE is_deleted=0  
) AS 論理削除抜きメッセージ表
JOIN rooms
ON rooms.id = 論理削除抜きメッセージ表.room_id
WHERE 論理削除抜きメッセージ表.post_user_id <> ( 
SELECT  id
FROM `users`
WHERE is_deleted=1) OR 論理削除抜きメッセージ表.update_user_id <> ( 
SELECT  id
FROM `users`
WHERE is_deleted=1) 
GROUP BY  room_id
ORDER BY 投稿数 DESC;