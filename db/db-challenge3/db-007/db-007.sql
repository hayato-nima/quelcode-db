-- <実行内容>
-- 以下の要件を満たしてチャットルーム一覧を出力すること
-- ・削除されたチャットルームは表示しない
-- ・全てのカラムを表示すること。ただし、*は使用しないこと
-- ・概要がダイレクトチャットで終わっている
-- ・ファイル送信が許可されているときは「許可」、許可されていないときは「禁止」と表示
-- ・チャットルームidの昇順で表示

SELECT `id`, `name`, `summary`, 
CASE WHEN is_file_sendable=1 THEN '許可'
ELSE '禁止'
END AS ファイル送信許可,
`is_entried_direct_chatroom`, `is_deleted`, `created_at`, `create_user_id`, `updated_at`, `update_user_id` 
FROM rooms 
WHERE (is_deleted<>1) AND (summary LIKE '%ダイレクトチャット')
ORDER BY rooms.id ASC;

