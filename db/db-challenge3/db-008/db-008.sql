-- <実行内容>
-- 以下の要件を満たして参加ルーム一覧を出力すること
-- ・参加しているユーザー名、参加しているチャットルーム名、参加日時を表示すること
-- ・参加日時は年月日のみ表示すること
-- ・削除されているユーザー、削除されているチャットルームは表示しないこと
-- ・参加日時の昇順で表示

SELECT  users.screen_name   AS ユーザー名
       ,rooms.name          AS チャットルーム名
       ,LEFT(entered_at,10) AS 参加日時
FROM entry_records
JOIN users
ON entry_records.user_id = users.id
JOIN rooms
ON entry_records.room_id = rooms.id
WHERE (user_id <>( 
SELECT  id
FROM `users`
WHERE is_deleted=1)) AND (room_id <>( 
SELECT  id
FROM `rooms`
WHERE is_deleted=1))
ORDER BY entry_records.entered_at ASC; 