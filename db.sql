BEGIN TRANSACTION;
CREATE TABLE "StepProp" (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`ActionStep`	INTEGER,
	`Property`	INTEGER,
	`Param1`	INTEGER,
	`Param2`	TEXT
);
CREATE TABLE `Queue` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Player`	INTEGER,
	`ActionTime`	INTEGER
);
CREATE TABLE "Properties" (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Property`	TEXT
);
INSERT INTO `Properties` VALUES (1,'Point');
INSERT INTO `Properties` VALUES (2,'Mouse');
INSERT INTO `Properties` VALUES (3,'Keyboard');
CREATE TABLE `Points` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT,
	`MinX`	INTEGER,
	`MaxX`	INTEGER,
	`MinY`	INTEGER,
	`MaxY`	INTEGER,
	`Step`	INTEGER DEFAULT 0,
	`StepDirection`	INTEGER
);
INSERT INTO `Points` VALUES (1,'y',141,163,159,176,0,NULL);
INSERT INTO `Points` VALUES (2,'u',205,222,166,177,0,NULL);
INSERT INTO `Points` VALUES (3,'p',83,102,168,177,0,NULL);
INSERT INTO `Points` VALUES (4,'e',204,243,162,194,0,NULL);
INSERT INTO `Points` VALUES (5,'w',141,165,165,179,0,NULL);
INSERT INTO `Points` VALUES (6,'e',92,119,146,164,0,NULL);
INSERT INTO `Points` VALUES (7,'v',144,171,120,133,0,NULL);
INSERT INTO `Points` VALUES (8,'rr',119,139,110,122,0,NULL);
INSERT INTO `Points` VALUES (9,'rr',119,139,110,122,0,NULL);
INSERT INTO `Points` VALUES (10,'ttt',62,91,47,72,0,NULL);
INSERT INTO `Points` VALUES (11,'wr',135,237,29,124,0,NULL);
INSERT INTO `Points` VALUES (12,'wr',135,237,29,124,0,NULL);
INSERT INTO `Points` VALUES (13,'rty',88,126,35,98,0,NULL);
INSERT INTO `Points` VALUES (14,'qq',80,143,41,89,0,NULL);
INSERT INTO `Points` VALUES (15,'',81,161,41,108,0,NULL);
INSERT INTO `Points` VALUES (16,'',78,121,34,77,0,NULL);
INSERT INTO `Points` VALUES (17,'',78,121,34,77,0,NULL);
CREATE TABLE "Players" (
	`PlayerID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Player`	VARCHAR(30),
	`StartH`	INTEGER DEFAULT 1,
	`EndH`	INTEGER DEFAULT 2,
	`Available`	INTEGER DEFAULT 'FALSE',
	`StartM`	TEXT DEFAULT 0,
	`EndM`	INTEGER DEFAULT 0,
	`DefaultScript`	INTEGER
);
INSERT INTO `Players` VALUES (14,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (15,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (16,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (17,'NEW',2,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (18,'NEW',2,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (19,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (20,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (21,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (22,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (23,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (24,'NEW',19,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (25,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (26,'NEW',14,15,'FALSE','15',0,NULL);
INSERT INTO `Players` VALUES (27,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (28,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (29,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (30,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (31,'NEW',1,2,'FALSE','0',0,NULL);
INSERT INTO `Players` VALUES (32,'NEW',1,2,'FALSE','0',0,NULL);
CREATE TABLE `PlayScripts` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Script`	TEXT
);
CREATE TABLE "PlayScriptActions" (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Playscript`	INTEGER,
	`ActionBlock`	INTEGER,
	`Delay`	INTEGER,
	`AltActionBlock`	INTEGER,
	`AltDelay`	INTEGER
);
CREATE TABLE `Play` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Player`	INTEGER,
	`Script`	INTEGER,
	`StartedAt`	TEXT,
	`CurrentBlock`	INTEGER,
	`PlayTime`	INTEGER
);
CREATE TABLE "Actions" (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Action`	TEXT
);
CREATE TABLE "ActionSteps" (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Actions`	INTEGER,
	`ActionStep`	TEXT,
	`QueNo`	INTEGER
);
CREATE TABLE `ActionBlocks` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Block`	TEXT
);
CREATE TABLE `ActionBlockActions` (
	`ID`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Action`	INTEGER,
	`ActionBlock`	INTEGER,
	`Delay`	INTEGER
);
COMMIT;
