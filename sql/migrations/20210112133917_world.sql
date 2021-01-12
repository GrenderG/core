DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210112133917');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210112133917');
-- Add your query below.

UPDATE `creature` SET `spawn_flags` = 1 WHERE `id` in (4484, 5633, 10646);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
