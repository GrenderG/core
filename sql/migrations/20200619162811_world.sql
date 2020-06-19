DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200619162811');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200619162811');
-- Add your query below.

DELETE FROM `creature_loot_template` WHERE `item` = 20062 AND `entry` IN (11465, 11746, 14983, 15229);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
