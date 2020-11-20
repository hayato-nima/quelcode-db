-- 以下の要件を満たした更新を行うこと
-- ・以下の条件にあうタスクの完了フラグをTrue(=1)にすること
-- - タスクの登録日時が2020/4/26 09:00～2020/4/26 11:30であること
-- - 削除されていないタスクであること
-- ・更新したユーザーの名前はadmin(user_id=1)であること
-- ・更新日時が更新されること
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
UPDATE tasks
SET is_completed_task=1, updated_at=NOW()
WHERE is_deleted=0 
AND update_user_id=1 
AND (created_at BETWEEN '2020-04-26 09:00:00' AND '2020-04-26 11:30:00');
COMMIT; 
