-- 以下の要件を満たした削除を行うこと
-- ・削除されているユーザーのチャットルームとのリレーション(中間テーブル)の削除を行うこと
-- ・トランザクションを考慮したSQL文になっていること

BEGIN;
DELETE FROM entry_records
WHERE user_id IN (SELECT id FROM users WHERE is_deleted=1)
OR room_id IN (SELECT id FROM rooms WHERE is_deleted=1);
COMMIT;
