-- KARAZHAN FIXES
-- Source is mostly CMaNGOS WotLKDB
-- https://github.com/cmangos/wotlk-db/commit/5317365958a184f02b98f67f5e0a98eef0e43111

-- Stop DB errors (there is no path data for this Spectral Waiter and Netherspite)
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (81433,68947);

-- Add 1 random say to Spectral Stable Hands
UPDATE `dbscripts_on_creature_movement` SET `dataint3` = 2000000909 WHERE `id` = 8508001 AND `delay` = 0;
DELETE FROM `db_script_string` WHERE `entry` = 2000000909;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
('2000000909','I grow tired of this routine.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','1','Spectral Stable Hand - Say 3');
UPDATE `db_script_string` SET `comment` = 'Spectral Stable Hand - Say 2' WHERE `entry` = 2000000807;

-- Fix positioning of two Spectral Stable Hands near Attumen
UPDATE `creature` SET `position_x` = '-11151.372070', `position_y` = '-1913.820679', `position_z` = '49.890079', `orientation` = '2.307501' WHERE `guid` = 101407;
UPDATE `creature_movement` SET `position_x` = '-11151.372070', `position_y` = '-1913.820679', `position_z` = '49.890079', `orientation` = 100 WHERE `id` = 101407;
UPDATE `creature` SET `position_x` = '-11149.5', `position_y` = '-1913.88', `position_z` = '49.8889', `orientation` = '0.687894' WHERE `guid` = 101409;

-- Add random say to Spectral Stable Hands 84973, 84974, 84981, 85352, 101409
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 101409;
DELETE FROM `creature_movement` WHERE `id` = 101409;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES 
('101409','1','-11149.5','-1913.88','49.8889','85000','0','0','0','0','0','0','0','0','100','0','0'),
('101409','2','-11149.5','-1913.88','49.8889','70000','8508001','0','0','0','0','0','0','0','100','0','0'),
('101409','3','-11149.5','-1913.88','49.8889','45000','8508001','0','0','0','0','0','0','0','100','0','0'),
('101409','4','-11149.5','-1913.88','49.8889','80000','0','0','0','0','0','0','0','0','100','0','0'),
('101409','5','-11149.5','-1913.88','49.8889','25000','8508001','0','0','0','0','0','0','0','100','0','0');

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 84981;
DELETE FROM `creature_movement` WHERE `id` IN (84981);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('84981','1','-11134.034180','-1894.835327','49.889801','80000','0','0','0','0','0','0','0','0','100','0','0'),
('84981','2','-11134.034180','-1894.835327','49.889801','25000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84981','3','-11134.034180','-1894.835327','49.889801','85000','0','0','0','0','0','0','0','0','100','0','0'),
('84981','4','-11134.034180','-1894.835327','49.889801','70000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84981','5','-11134.034180','-1894.835327','49.889801','45000','8508001','0','0','0','0','0','0','0','100','0','0');

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 84974;
DELETE FROM `creature_movement` WHERE `id` = 84974;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('84974','1','-11141.928711','-1893.276733','49.889210','25000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84974','2','-11141.928711','-1893.276733','49.889210','85000','0','0','0','0','0','0','0','0','100','0','0'),
('84974','3','-11141.928711','-1893.276733','49.889210','70000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84974','4','-11141.928711','-1893.276733','49.889210','45000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84974','5','-11141.928711','-1893.276733','49.889210','80000','0','0','0','0','0','0','0','0','100','0','0');

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 84973;
DELETE FROM `creature_movement` WHERE `id` = 84973;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('84973','1','-11136.978516','-1894.764526','49.889843','70000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84973','2','-11136.978516','-1894.764526','49.889843','45000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84973','3','-11136.978516','-1894.764526','49.889843','80000','0','0','0','0','0','0','0','0','100','0','0'),
('84973','4','-11136.978516','-1894.764526','49.889843','25000','8508001','0','0','0','0','0','0','0','100','0','0'),
('84973','5','-11136.978516','-1894.764526','49.889843','85000','0','0','0','0','0','0','0','0','100','0','0');

-- Add missing Spectral Servants
delete from `creature` WHERE `guid` in (85352,85353);
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('85352','16407','532','1','0','0','-11123.614258','-1898.481812','49.889698','1.219402','86400','0','0','41916','0','0','2'),
('85353','16407','532','1','0','0','-11123.963867','-1891.184082','49.891106','5.397719','86400','0','0','41916','0','0','2');

DELETE FROM `creature_movement` WHERE `id` = 85352;
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('85352','1','-11123.614258','-1898.481812','49.889698','75000','0','0','0','0','0','0','0','0','100','0','0'),
('85352','2','-11123.614258','-1898.481812','49.889698','35000','8505501','0','0','0','0','0','0','0','100','0','0'),
('85352','3','-11123.614258','-1898.481812','49.889698','70000','0','0','0','0','0','0','0','0','100','0','0'),
('85352','4','-11123.614258','-1898.481812','49.889698','80000','8505501','0','0','0','0','0','0','0','100','0','0'),
('85352','5','-11123.614258','-1898.481812','49.889698','30000','0','0','0','0','0','0','0','0','100','0','0');

DELETE FROM `creature_movement` WHERE `id` = 85353;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('85353','1','-11123.963867','-1891.184082','49.891106','45000','8505501','0','0','0','0','0','0','0','100','0','0'),
('85353','2','-11123.963867','-1891.184082','49.891106','45000','0','0','0','0','0','0','0','0','100','0','0'),
('85353','3','-11123.963867','-1891.184082','49.891106','90000','8505501','0','0','0','0','0','0','0','100','0','0'),
('85353','4','-11123.963867','-1891.184082','49.891106','80000','0','0','0','0','0','0','0','0','100','0','0'),
('85353','5','-11123.963867','-1891.184082','49.891106','65000','0','0','0','0','0','0','0','0','100','0','0');

-- These should not be talking
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (85055,85347,85349,85350);
DELETE FROM `creature_movement` WHERE `id` IN (85055,85347,85349,85350);

DELETE FROM `creature_linking` WHERE `guid` IN (85352,85353) AND `master_guid` = 85350;
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
('85352','85350','3'),
('85353','85350','3');

-- Redo Skeletal Waiter pathing (going into Banquet Room)
DELETE FROM `creature_movement` WHERE `id` = 101445;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(101445,1,-11046.2,-1975.23,77.2682,8000,1641502,6.1909),
(101445,2,-11049.4,-1969.97,77.2682,0,0,1.76911),
(101445,3,-11047.1,-1947.76,77.2682,0,0,1.46673),
(101445,4,-11044.8,-1931.96,77.2682,0,0,1.06382),
(101445,5,-11041.4,-1926.7,77.2682,0,0,0.935682),
(101445,6,-11037.7,-1924.25,77.2682,0,0,0.0128384),
(101445,7,-11026.2,-1925.88,78.8681,0,0,0.127348),
(101445,8,-11018.8,-1923.41,78.8681,0,0,0.650878),
(101445,9,-10998.3,-1907.25,78.8483,0,0,0.638026),
(101445,10,-10985.5,-1896.71,78.8825,0,0,1.39358),
(101445,11,-10985.3,-1890.52,81.7294,0,0,1.51375),
(101445,12,-10985.4,-1882.17,81.7294,0,0,1.72188),
(101445,13,-10987,-1875.36,81.7291,4000,1641501,0.944332),
(101445,14,-10985.5,-1882.51,81.729,0,0,4.87495),
(101445,15,-10985,-1890.4,81.729,0,0,4.66289),
(101445,16,-10985.7,-1896.79,78.8763,0,0,4.35266),
(101445,17,-10989.2,-1901.23,78.8647,0,0,3.74791),
(101445,18,-10999.7,-1907.61,78.8589,0,0,3.31987),
(101445,19,-11013,-1909.29,78.867,0,0,3.86965),
(101445,20,-11024.4,-1922.9,78.867,0,0,3.65837),
(101445,21,-11027.7,-1923.68,78.867,0,0,3.04576),
(101445,22,-11039.1,-1922.47,77.2681,0,0,3.42432),
(101445,23,-11046.6,-1926.97,77.2681,0,0,4.30789),
(101445,24,-11049.6,-1935.37,77.2681,0,0,4.49639),
(101445,25,-11051.1,-1949.57,77.2681,0,0,4.62612),
(101445,26,-11052.5,-1964.88,77.2681,0,0,4.64183),
(101445,27,-11051.1,-1974.01,77.2681,0,0,5.51911);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1641501,1641502);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1641501,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1641502,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1641502,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Redo Skeletal Waiter pathing (in Banquet Room)
UPDATE `creature` SET `position_x` = -10967.281250, `position_y` = -1910.214478, `orientation` = 2.993973 WHERE `guid` = 101447;
DELETE FROM `creature_movement` WHERE `id` = 101447;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(101447,1,-10974.7,-1909.16,78.8977,0,0,2.42848),
(101447,2,-10979.9,-1902.24,78.8827,0,0,2.73872),
(101447,3,-10994,-1900.67,78.8243,0,0,3.57988),
(101447,4,-10998.9,-1904.66,78.8164,0,0,3.28453),
(101447,5,-11009.3,-1904.52,78.8667,0,0,2.97202),
(101447,6,-11016.6,-1901.67,78.8667,0,0,2.31307),
(101447,7,-11019.1,-1894.62,78.8667,0,0,1.59757),
(101447,8,-11019.1,-1894.62,78.8667,5000,1641501,6.1466),
(101447,9,-11013.5,-1888.45,78.8667,0,0,0.401407),
(101447,10,-11004.3,-1887.7,78.8592,0,0,6.09947),
(101447,11,-10997.2,-1890.31,78.8183,0,0,5.65966),
(101447,12,-10997.2,-1890.31,78.8183,5000,1641501,3.98204),
(101447,13,-10993.2,-1897.44,78.8227,0,0,6.15917),
(101447,14,-10979.6,-1898.8,78.8858,0,0,0.457959),
(101447,15,-10975.9,-1896.31,78.9165,0,0,0.769319),
(101447,16,-10968.6,-1890.83,78.9176,0,0,0.128915),
(101447,17,-10957.7,-1892.04,78.8697,0,0,5.84897),
(101447,18,-10953,-1896.01,78.8682,0,0,5.33061),
(101447,19,-10952,-1902.34,78.8682,0,0,4.60491),
(101447,20,-10952,-1902.34,78.8682,5000,1641501,3.08438),
(101447,21,-10954.6,-1907.65,78.8682,0,0,3.92417),
(101447,22,-10958.7,-1910.65,78.8682,0,0,3.36889),
(101447,23,-10966.9,-1910.31,78.8682,0,0,3.02253);

-- Redo Spectral Servant pathing (down the stairs)
UPDATE `creature` SET `position_x` = '-10911.2', `position_y` = '-2000.3', `position_z` = '92.184', `orientation` = '4.14224' WHERE `guid` = '85024';
DELETE FROM `creature_movement` WHERE `id` = 85024;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(85024,1,-10916.9,-2002.36,92.183,0,0,4.20329),
(85024,2,-10919.7,-2026.27,92.1834,0,0,4.59992),
(85024,3,-10920.8,-2036.76,86.0722,0,0,4.38157),
(85024,4,-10922.9,-2042.15,86.0722,0,0,3.93547),
(85024,5,-10928.7,-2043.93,86.0726,0,0,3.04247),
(85024,6,-10934.2,-2042.9,86.0726,0,0,2.43065),
(85024,7,-10937.1,-2039.5,86.0726,0,0,1.7935),
(85024,8,-10937.6,-2034.7,86.0712,0,0,1.49427),
(85024,9,-10936.3,-2023.85,79.9743,0,0,1.49034),
(85024,10,-10936.4,-2020.46,79.9743,0,0,2.1917),
(85024,11,-10938.4,-2018.53,79.9743,0,0,3.08077),
(85024,12,-10947.8,-2018.26,79.9743,0,0,3.05642),
(85024,13,-10937,-2019.36,79.9743,0,0,5.57677),
(85024,14,-10936,-2021.73,79.9743,0,0,4.64948),
(85024,15,-10936.1,-2024.25,79.974,0,0,4.61021),
(85024,16,-10937.5,-2034.22,86.0707,0,0,4.5788),
(85024,17,-10936.9,-2039.84,86.0712,0,0,5.25263),
(85024,18,-10933.3,-2043.53,86.072,0,0,5.97912),
(85024,19,-10927.8,-2043.82,86.0725,0,0,0.112188),
(85024,20,-10922.8,-2041.88,86.0725,0,0,1.0044),
(85024,21,-10920.7,-2036.8,86.0714,0,0,1.4238),
(85024,22,-10919.6,-2026.59,92.183,0,0,1.45129),
(85024,23,-10917.2,-2002.8,92.1832,0,0,0.567719),
(85024,24,-10911.4,-2000.2,92.1832,0,0,1.00597),
(85024,25,-10907.8,-1994.65,92.1843,0,0,1.19247),
(85024,26,-10905.8,-1976.78,92.1846,0,0,1.4595),
(85024,27,-10904,-1963.18,92.1732,0,0,1.4006),
(85024,28,-10887.2,-1964.69,92.1718,0,0,6.16944),
(85024,29,-10904,-1962.55,92.1727,0,0,4.52403),
(85024,30,-10905.6,-1976.29,92.1855,0,0,4.6065),
(85024,31,-10908,-1995.75,92.1855,0,0,4.1111),
(85024,32,-10911.1,-1999.73,92.184,0,0,3.84642);

-- Redo Spectral Servant pathing (along edge, all the way around)
UPDATE `creature` SET `position_x` = '-10945.8', `position_y` = '-1937.39', `position_z` = '93.8207', `orientation` = '2.44967' WHERE `guid` = '85002';
DELETE FROM `creature_movement` WHERE `id` = 85002;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(85002,1,-10943.3,-1919.21,93.8204,0,0,1.4064),
(85002,2,-10940.9,-1898.83,93.8204,0,0,1.41504),
(85002,3,-10943.3,-1918.74,93.8204,0,0,4.58334),
(85002,4,-10945.3,-1937.43,93.8204,0,0,5.45314),
(85002,5,-10937.8,-1944.18,93.82,0,0,4.59706),
(85002,6,-10940,-1960.04,93.8244,0,0,4.56172),
(85002,7,-10940.9,-1967.86,93.8244,0,0,4.76749),
(85002,8,-10941.9,-1976.56,93.8244,0,0,4.49522),
(85002,9,-10944,-1994.69,93.8244,0,0,4.55805),
(85002,10,-10946.8,-2020.59,93.8244,0,0,4.58946),
(85002,11,-10949,-2039.38,93.8244,0,0,2.94484),
(85002,12,-10970.8,-2036.96,93.823,0,0,3.0383),
(85002,13,-10998.5,-2034.09,93.8234,0,0,1.5107),
(85002,14,-10996.4,-2015.4,93.8226,0,0,1.4518),
(85002,15,-10993.9,-1987.12,93.8331,0,0,2.68095),
(85002,16,-10999.5,-1984.85,93.8331,0,0,2.42334),
(85002,17,-11003.9,-1981.12,93.8328,0,0,2.34235),
(85002,18,-11010.1,-1972.48,93.8336,0,0,0.502162),
(85002,19,-10999.1,-1964.65,93.8336,0,0,0.485668),
(85002,20,-10992.3,-1960.35,93.829,0,0,0.976542),
(85002,21,-10990.1,-1956.12,93.8219,0,0,1.41087),
(85002,22,-10989.6,-1951.54,93.8257,0,0,2.98324),
(85002,23,-10992.5,-1951.31,93.8238,0,0,4.51398),
(85002,24,-10993.6,-1957.15,93.8189,0,0,4.19831),
(85002,25,-10996.6,-1960.65,93.8319,0,0,3.62026),
(85002,26,-11001.8,-1963.04,93.8319,0,0,3.38778),
(85002,27,-11007,-1963.55,93.8319,0,0,3.0422),
(85002,28,-11016.4,-1961.16,93.8271,0,0,2.27487),
(85002,29,-11019.6,-1955.1,93.8272,0,0,1.66461),
(85002,30,-11018.6,-1944.95,93.8269,0,0,1.39679),
(85002,31,-11019.3,-1956.88,93.828,0,0,5.00727),
(85002,32,-11015.2,-1961.86,93.8266,0,0,5.80679),
(85002,33,-11004.9,-1963.63,93.8304,0,0,0.041585),
(85002,34,-10997.8,-1961.53,93.8313,0,0,0.489262),
(85002,35,-10993.1,-1956.71,93.8188,0,0,1.05868),
(85002,36,-10992.6,-1950.81,93.8228,0,0,6.22738),
(85002,37,-10989.4,-1951.63,93.8255,0,0,4.57019),
(85002,38,-10990.8,-1957.83,93.823,0,0,4.16314),
(85002,39,-10992.9,-1960.72,93.8268,0,0,3.72646),
(85002,40,-11010,-1972.64,93.8339,0,0,5.43156),
(85002,41,-11003.5,-1981.47,93.8339,0,0,5.54495),
(85002,42,-10998.5,-1985.22,93.8324,0,0,5.91408),
(85002,43,-10993.5,-1987.31,93.8346,0,0,4.53964),
(85002,44,-10996.3,-2014.51,93.8233,0,0,4.61032),
(85002,45,-10998.7,-2033.83,93.8239,0,0,6.21253),
(85002,46,-10971,-2037.04,93.8226,0,0,6.16148),
(85002,47,-10949.1,-2039.68,93.8233,0,0,1.41767),
(85002,48,-10945.8,-2011.43,93.8233,0,0,1.44486),
(85002,49,-10942,-1977.16,93.8233,0,0,1.16447),
(85002,50,-10940.4,-1972.92,93.8233,0,0,1.7221),
(85002,51,-10941.3,-1967.79,93.8234,0,0,1.48727),
(85002,52,-10937.7,-1944.51,93.8204,0,0,2.31351),
(85002,53,-10945.7,-1937.36,93.8204,0,0,2.43524);

-- Redo Spectral Servant pathing (the far side)
UPDATE `creature` SET `position_x` = '-10954.8', `position_y` = '-2042.3', `position_z` = '93.8209', `orientation` = '3.06687' WHERE `guid` = '85003';
DELETE FROM `creature_movement` WHERE `id` = 85003;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(85003,1,-10977.5,-2040.33,93.8186,0,0,3.02724),
(85003,2,-11003,-2036.79,93.8234,0,0,1.43288),
(85003,3,-11000.3,-2011.53,93.8187,0,0,1.48001),
(85003,4,-10998.5,-1988.94,93.8268,0,0,2.55993),
(85003,5,-11002.3,-1986.53,93.8273,0,0,3.02567),
(85003,6,-11020.8,-1984.43,93.8285,0,0,2.45626),
(85003,7,-11022.6,-1979.85,93.8285,0,0,1.69938),
(85003,8,-11021.5,-1971.8,93.827,0,0,3.01329),
(85003,9,-11025.8,-1971.1,93.8255,0,0,3.04628),
(85003,10,-11021.5,-1971.75,93.8259,0,0,4.65399),
(85003,11,-11022.5,-1981.15,93.8274,0,0,5.10778),
(85003,12,-11020.2,-1984.48,93.8288,0,0,5.92302),
(85003,13,-11000.4,-1987.18,93.8292,0,0,5.65484),
(85003,14,-10998.5,-1989.25,93.8276,0,0,4.86631),
(85003,15,-11001,-2017.83,93.8186,0,0,4.59771),
(85003,16,-11002.4,-2036.59,93.8234,0,0,5.66977),
(85003,17,-10995.9,-2038.62,93.8234,0,0,6.19991),
(85003,18,-10965.6,-2041.46,93.8209,0,0,6.17635),
(85003,19,-10946.6,-2043.22,93.8234,0,0,1.51501),
(85003,20,-10943.2,-2014.11,93.8234,0,0,1.46907),
(85003,21,-10941,-2001.39,93.8234,0,0,0.3538),
(85003,22,-10935,-2000.37,92.183,0,0,6.17203),
(85003,23,-10940.6,-2001.14,93.8254,0,0,4.36954),
(85003,24,-10943.5,-2018.75,93.8254,0,0,4.6033),
(85003,25,-10947,-2042.79,93.8254,0,0,3.06785),
(85003,26,-10954,-2042.51,93.8254,0,0,3.06392);

-- 2 missing Spectral Servant patrols added
-- Source: wotlk-db
DELETE FROM `creature` WHERE `guid` IN (85037,85009);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(85009, 16407, 532, 1, 0, 0, -10939, -1960.1, 93.8242, 4.65429, 14400, 0, 0, 40566, 0, 0, 2),
(85037, 16407, 532, 1, 0, 0, -10929.6, -1971.55, 92.1902, 3.78897, 14400, 0, 0, 40566, 0, 0, 2);

DELETE FROM `creature_movement` WHERE `id` = 85009;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(85009,1,-10940.2,-1973.64,93.8247,0,0,4.85444),
(85009,2,-10938.7,-1978.97,93.8247,0,0,5.44741),
(85009,3,-10934.2,-1983.91,92.1832,0,0,5.36102),
(85009,4,-10930.3,-1990.17,92.1832,0,0,4.93926),
(85009,5,-10929.7,-1997.99,92.1832,0,0,6.05924),
(85009,6,-10927.3,-1997.9,92.1832,0,0,0.672978),
(85009,7,-10923,-1993.13,92.1832,0,0,0.556801),
(85009,8,-10907.6,-1987.53,92.1841,0,0,1.07752),
(85009,9,-10907.7,-1983.21,92.1841,0,0,2.12659),
(85009,10,-10914.9,-1976.66,92.1841,0,0,2.07289),
(85009,11,-10918.9,-1961.26,92.1772,0,0,1.48751),
(85009,12,-10913.8,-1945.75,92.1905,0,0,1.48123),
(85009,13,-10913.4,-1934.54,92.1977,0,0,2.28234),
(85009,14,-10917.7,-1933.11,92.1978,0,0,3.38111),
(85009,15,-10928.9,-1939.34,92.1833,0,0,3.36881),
(85009,16,-10931.9,-1938.4,93.8243,0,0,2.1216),
(85009,17,-10932.5,-1924.93,93.8227,0,0,1.82315),
(85009,18,-10936.5,-1913.97,93.8196,0,0,2.48367),
(85009,19,-10940.7,-1913.28,93.8197,0,0,3.51176),
(85009,20,-10943.7,-1916.1,93.8197,0,0,4.41953),
(85009,21,-10946.4,-1934.47,93.8197,0,0,4.81537),
(85009,22,-10945.4,-1939.65,93.8197,0,0,5.45153),
(85009,23,-10941.3,-1943.85,93.8189,0,0,5.27953),
(85009,24,-10938.7,-1949.25,93.8197,0,0,4.92139),
(85009,25,-10939,-1959.69,93.8231,0,0,4.66221);

DELETE FROM `creature_movement` WHERE `id` = 85037;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(85037,1,-10930.2,-1974.14,92.1811,0,0,4.97965),
(85037,2,-10924.1,-1986.02,92.1835,0,0,5.25061),
(85037,3,-10920.9,-1992.06,92.1835,0,0,5.48622),
(85037,4,-10916.6,-1995.72,92.1835,0,0,5.8852),
(85037,5,-10909.6,-1997.67,92.1837,0,0,1.17045),
(85037,6,-10906.3,-1973.6,92.1844,0,0,1.41393),
(85037,7,-10903.4,-1951.48,92.1859,0,0,1.46105),
(85037,8,-10899.8,-1928.96,92.1844,0,0,1.8514),
(85037,9,-10902.5,-1922.91,92.1844,0,0,2.44732),
(85037,10,-10908,-1921.64,92.2038,0,0,3.26715),
(85037,11,-10916.9,-1922.34,92.1969,0,0,3.01975),
(85037,12,-10926.9,-1919.77,92.1837,0,0,3.10615),
(85037,13,-10932.5,-1917.74,93.8192,0,0,2.32252),
(85037,14,-10943.6,-1903.07,93.8198,0,0,2.13795),
(85037,15,-10944.7,-1919.94,93.8198,0,0,5.07533),
(85037,16,-10942.9,-1925,93.8198,0,0,5.61198),
(85037,17,-10938.1,-1929.66,93.8198,0,0,6.18672),
(85037,18,-10916.3,-1932.04,92.1985,0,0,5.63301),
(85037,19,-10913.1,-1936.05,92.1969,0,0,4.79264),
(85037,20,-10916.5,-1946.13,92.1907,0,0,4.24287),
(85037,21,-10918.6,-1950.79,92.1862,0,0,5.38562),
(85037,22,-10915.8,-1954.34,92.1848,0,0,5.06284),
(85037,23,-10914.7,-1956.37,92.18,0,0,4.13372),
(85037,24,-10928.8,-1971.05,92.1806,0,0,3.76305);

-- Emotes added
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1646801,1647001);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1646801,1,1,1,0,0,0,0,6,273,274,11,0,0,0,0,''),
(1647001,1,1,274,0,0,0,0,1,11,6,273,0,0,0,0,'');

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` IN (57131,57088,57081,57129,57082,57083);
DELETE FROM `creature_movement` WHERE `id` IN (57131,57088,57081,57129,57082,57083);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(57131,1,-10926.5,-1865.88,110.599,3000,1646801,2.1293),
(57131,2,-10926.5,-1865.88,110.599,14000,0,2.1293),
(57088,1,-10927.2,-1862.6,110.599,5000,0,4.29351),
(57088,2,-10927.2,-1862.6,110.599,6000,1646801,4.29351),
(57081,1,-10935.7,-1875.22,110.602,6000,0,1.309),
(57081,2,-10935.7,-1875.22,110.602,7000,1647001,1.309),
(57129,1,-10941.3,-1869.12,110.601,1000,0,0.994838),
(57129,2,-10941.3,-1869.12,110.601,13000,1646801,0.994838),
(57082,1,-10939.4,-1867.83,110.6,8000,1647001,3.05433),
(57082,2,-10939.4,-1867.83,110.6,3000,1647001,3.05433),
(57083,1,-10935.8,-1871.22,110.6,10000,1646801,4.81711),
(57083,2,-10935.8,-1871.22,110.6,2000,1646801,4.81711);
 
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` IN (57085,57142,57149,57084,57086,57143);
DELETE FROM `creature_movement` WHERE `id` IN (57085,57142,57149,57084,57086,57143);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(57085,1,-10883.4,-1869.55,110.599,19000,1646801,4.46804),
(57142,1,-10882.7,-1886.03,110.601,4000,1647001,0.802851),
(57142,2,-10882.7,-1886.03,110.601,22000,0,0.802851),
(57149,1,-10875.8,-1881.21,110.602,7000,0,2.35619),
(57149,2,-10875.8,-1881.21,110.602,5000,1647001,2.35619),
(57084,1,-10875,-1878.74,110.601,17000,0,4.01426),
(57084,2,-10875,-1878.74,110.601,5000,1646801,4.01426),
(57086,1,-10880.7,-1885.19,110.602,3000,0,2.93215),
(57086,2,-10880.7,-1885.19,110.602,16000,1646801,2.93215),
(57143,1,-10884.3,-1873.28,110.599,16000,0,1.20428),
(57143,2,-10884.3,-1873.28,110.599,3000,1646801,1.20428);

-- Rat random movement
UPDATE `creature` SET `position_x` = -10935.636719, `position_y` = -1879.532227, `position_z` = 110.519699, `spawndist` = 1, `MovementType` = 1 WHERE `guid` = 28671;
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 28701;

-- Add missing spawns for Trapped Souls and Ghastly Haunts
DELETE FROM `creature` WHERE `id` IN (16481,16482);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(151010, 16481, 532, 1, 0, 0, -11045.2, -1973.17, 143.078, 5.76862, 14400, 5, 0, 51660, 0, 0, 1),
(151011, 16481, 532, 1, 0, 0, -11063.7, -1948.29, 124.578, 1.1929, 14400, 5, 0, 51660, 0, 0, 1),
(151012, 16481, 532, 1, 0, 0, -11061.9, -2032.53, 115.17, 5.24006, 14400, 5, 0, 51660, 0, 0, 1),
(151013, 16481, 532, 1, 0, 0, -11010.5, -1964.66, 110.077, 0.268507, 14400, 5, 0, 51660, 0, 0, 1),
(151014, 16481, 532, 1, 0, 0, -11038, -1948.52, 113.32, 2.59801, 14400, 5, 0, 51660, 0, 0, 1),
(151015, 16481, 532, 1, 0, 0, -11053, -1949.28, 96.472, 2.12436, 14400, 5, 0, 51660, 0, 0, 1),
(151016, 16481, 532, 1, 0, 0, -11060.2, -2014.64, 97.019, 5.98857, 14400, 5, 0, 51660, 0, 0, 1),
(151017, 16481, 532, 1, 0, 0, -11090.5, -1969.23, 92.6019, 1.52474, 14400, 5, 0, 51660, 0, 0, 1),
(151018, 16481, 532, 1, 0, 0, -11057.7, -1997.75, 115.226, 2.9081, 14400, 5, 0, 51660, 0, 0, 1),
(151019, 16481, 532, 1, 0, 0, -11051.3, -1982.27, 158.296, 4.31096, 14400, 0, 0, 51660, 0, 0, 0),
(151020, 16482, 532, 1, 0, 0, -11051.2, -1982.32, 158.191, 4.91253, 14400, 5, 0, 41321, 33090, 0, 1),
(151021, 16482, 532, 1, 0, 0, -11057.4, -1997.93, 115.226, 3.16662, 14400, 5, 0, 41321, 33090, 0, 1),
(151022, 16482, 532, 1, 0, 0, -11052.8, -1949.66, 96.4722, 2.09848, 14400, 5, 0, 41321, 33090, 0, 1),
(151023, 16482, 532, 1, 0, 0, -11090.3, -1968.85, 92.5991, 2.20059, 14400, 5, 0, 41321, 33090, 0, 1),
(151024, 16482, 532, 1, 0, 0, -11060.5, -2014.54, 97.014, 5.07515, 14400, 5, 0, 41321, 33090, 0, 1),
(151025, 16482, 532, 1, 0, 0, -11061.9, -2032.95, 115.235, 4.92807, 14400, 5, 0, 41321, 33090, 0, 1),
(151026, 16482, 532, 1, 0, 0, -11010.4, -1964.47, 110.108, 0.797895, 14400, 5, 0, 41321, 33090, 0, 1),
(151027, 16482, 532, 1, 0, 0, -11038.1, -1948.53, 113.325, 1.8208, 14400, 5, 0, 41321, 33090, 0, 1),
(151028, 16482, 532, 1, 0, 0, -11044.9, -1973.42, 143.162, 4.18879, 14400, 0, 0, 41321, 33090, 0, 0),
(151029, 16482, 532, 1, 0, 0, -11063.4, -1947.76, 124.578, 1.14371, 14400, 5, 0, 41321, 33090, 0, 1);

-- Pools created

-- Pool Templates -- Pool 1
DELETE FROM `pool_template` WHERE `entry` = 25577;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25577, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25577;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151020, 25577, 0, 'Karazhan - Trapped Soul'),
(151019, 25577, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 2
DELETE FROM `pool_template` WHERE `entry` = 25578;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25578, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25578;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151021, 25578, 0, 'Karazhan - Trapped Soul'),
(151018, 25578, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 3
DELETE FROM `pool_template` WHERE `entry` = 25579;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25579, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 3');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25579;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151022, 25579, 0, 'Karazhan - Trapped Soul'),
(151015, 25579, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 4
DELETE FROM `pool_template` WHERE `entry` = 25580;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25580, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 4');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25580;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151023, 25580, 0, 'Karazhan - Trapped Soul'),
(151017, 25580, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 5
DELETE FROM `pool_template` WHERE `entry` = 25581;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25581, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 5');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25581;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151024, 25581, 0, 'Karazhan - Trapped Soul'),
(151016, 25581, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 6
DELETE FROM `pool_template` WHERE `entry` = 25582;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25582, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 6');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25582;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151025, 25582, 0, 'Karazhan - Trapped Soul'),
(151012, 25582, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 7
DELETE FROM `pool_template` WHERE `entry` = 25583;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25583, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 7');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25583;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151026, 25583, 0, 'Karazhan - Trapped Soul'),
(151013, 25583, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 8
DELETE FROM `pool_template` WHERE `entry` = 25584;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25584, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 8');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25584;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151027, 25584, 0, 'Karazhan - Trapped Soul'),
(151014, 25584, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 9
DELETE FROM `pool_template` WHERE `entry` = 25585;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25585, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 9');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25585;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151028, 25585, 0, 'Karazhan - Trapped Soul'),
(151010, 25585, 0, 'Karazhan - Ghastly Haunt');

-- Pool Templates -- Pool 10
DELETE FROM `pool_template` WHERE `entry` = 25586;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25586, 1, 'Karazhan - Trapped Soul/Ghastly Haunt - Pool 10');
-- Individual Creature Spawn Pools
DELETE FROM `pool_creature` WHERE `pool_entry` = 25586;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151029, 25586, 0, 'Karazhan - Trapped Soul'),
(151011, 25586, 0, 'Karazhan - Ghastly Haunt');

-- The Curator
-- waypoints corrected (minor adjustment, he was walking too far out before)
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 15691;
DELETE FROM `creature_movement` WHERE `id` = 56327;
DELETE FROM `creature_movement_template` WHERE `entry` = 15691;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(15691,1,-11173.1,-1901.89,165.766,0,0,2.24672),
(15691,2,-11191.4,-1878.79,153.672,0,0,2.22708),
(15691,3,-11194.1,-1875.5,153.544,0,0,2.18781),
(15691,4,-11191,-1879.08,153.846,0,0,5.40009),
(15691,5,-11172.9,-1902.04,165.766,0,0,5.37653),
(15691,6,-11168.4,-1907.76,165.766,0,0,0.851978),
(15691,7,-11136.8,-1882.43,165.766,0,0,0.632851),
(15691,8,-11120.4,-1869.84,165.766,0,0,0.715318),
(15691,9,-11104.6,-1856.86,165.766,0,0,0.664268),
(15691,10,-11120,-1869.51,165.766,0,0,3.81371),
(15691,11,-11136.7,-1882.52,165.766,0,0,3.80193),
(15691,12,-11168.8,-1908.21,165.766,0,0,3.83335);

-- All Chaotic Sentience and Mana Feeder should have random movement
UPDATE `creature` SET `spawndist` = 3, `MovementType` = 1 WHERE `id` IN (16489,16491);

-- Greater Fleshbeast 135862 has the path, not 135864
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 135864;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 135862;

UPDATE `creature` SET `spawndist` = 3 WHERE `guid` = 135865;

-- Sealed Tome
-- Only one book should be available to loot
UPDATE `gameobject_loot_template` SET `groupid` = 1 WHERE `entry` = 18509;
-- should despawn after use
UPDATE `gameobject_template` SET `data2` = 0 WHERE `data1` = 18509;


