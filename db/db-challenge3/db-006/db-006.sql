-- <実行内容>
-- 以下の要件を満たしてユーザー一覧を出力すること
-- ・削除したユーザーも表示
-- ・全てのカラムを表示すること。ただし、*は使用しないこと
-- ・ユーザーidの昇順で表示

SELECT `id`, `screen_name`, `email`, `password`, `introduce`, `company_phone_number`, `mobile_phone_number`, `is_deleted`, `created_at`, `updated_at` 
FROM users
ORDER BY users.id ASC;

