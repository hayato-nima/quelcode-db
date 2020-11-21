-- 以下の要件を満たした更新を行うこと
-- ・以下の条件に合うチャットルームのファイル送信許可を禁止(=0)にすること
-- - ユーザー名admin(user_id=1)が参加していないチャットルームであること
-- - 削除されていないチャットルームであること
-- ・更新したユーザーはadmin(user_id=1)であること
-- ・更新日時が更新されること
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
UPDATE rooms
SET is_file_sendable=0, updated_at=NOW(), update_user_id=1
WHERE is_deleted=0 
AND id NOT IN( 
SELECT  room_id
FROM `entry_records`
WHERE user_id=1);
COMMIT;
