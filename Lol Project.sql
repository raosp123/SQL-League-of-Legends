CREATE TABLE Account (
	
	Account_ID int NOT NULL,
	Username varchar(255) NOT NULL,
	Email varchar(255) NOT NULL,
	AccountLevel int DEFAULT 1,
	AverageRank varchar(255),
	BlueEssence int DEFAULT 0,
	RiotPoints int DEFAULT 0,
	
	CONSTRAINT chk_lvl check (AccountLevel>=1),
	CONSTRAINT chk_rank check (AverageRank in ('Iron','Bronze','Silver','Gold','Platinum','Diamond','Master','Grandmaster','Challenger')),
	
	PRIMARY KEY (Account_ID)

);


CREATE TABLE Champion (
	
	ChampionName varchar(255) NOT NULL,
	Difficulty varchar(255),
	PassiveAbility varchar(255) NOT NULL,
	QAbility varchar(255) NOT NULL,
	WAbility varchar(255) NOT NULL,
	EAbility varchar(255) NOT NULL,
	RAbility varchar(255) NOT NULL,

	PRIMARY KEY (ChampionName),
	CONSTRAINT chk_diff check (Difficulty in ('Easy','Medium','Hard'))
);

CREATE TABLE RunePage (
	
	Page_Comb_ID int NOT NULL,
	PrimaryKeystone varchar(255) NOT NULL,
	Slot1Rune varchar(255) NOT NULL,
	Slot2Rune varchar(255) NOT NULL,
	Slot3Rune varchar(255) NOT NULL,
	Slot4Rune varchar(255) NOT NULL,
	Slot5Rune varchar(255) NOT NULL,
	Augment1 varchar(255) NOT NULL,
	Augment2 varchar(255) NOT NULL,
	Augment3 varchar(255) NOT NULL,

	PRIMARY KEY (Page_Comb_ID)
	
);

CREATE TABLE Game (
	
	Game_ID int NOT NULL,
	WinningTeam varchar(255),
	GameDuration int DEFAULT 0,
	BlueKillScore int DEFAULT 0,
	RedKillScore int DEFAULT 0,
	BlueGoldScore int DEFAULT 0,
	RedGoldScore int DEFAULT 0,

	PRIMARY KEY (Game_ID)
);



CREATE TABLE ChampionOwnership (

	Account_ID int NOT NULL,
	ChampionName varchar(255) NOT NULL,

	FOREIGN KEY (Account_ID) REFERENCES Account(Account_ID),
	FOREIGN KEY (ChampionName) REFERENCES Champion(ChampionName),
	CONSTRAINT PK_ChampionOwnership PRIMARY KEY (Account_ID,ChampionName)
	
);

CREATE TABLE PlayerInstance (

	Player_ID int NOT NULL,
	Team varchar(255) NOT NULL,
	Game_ID int NOT NULL,
	Account_ID int NOT NULL,
	Page_Comb_ID int NOT NULL,
	ChampionName varchar(255) NOT NULL,
	Item1 varchar(255),
	Item2 varchar(255),
	Item3 varchar(255),
	Item4 varchar(255),
	Item5 varchar(255),
	Item6 varchar(255),
	CreepScore int DEFAULT 0,
	Kills int DEFAULT 0,
	Deaths int DEFAULT 0,
	Assists int DEFAULT 0,
	GoldEarner int DEFAULT 0,

	PRIMARY KEY (Player_ID),
	FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID),
	FOREIGN KEY (Account_ID) REFERENCES Account(Account_ID),
	FOREIGN KEY (ChampionName) REFERENCES Champion(ChampionName),
	FOREIGN KEY (Page_Comb_ID) REFERENCES RunePage(Page_Comb_ID)
	
);


UPDATE Account
SET AccountLevel = AccountLevel + 1
Where Account_ID = 1;

CREATE VIEW HighLevelAccounts AS
	SELECT Account_ID, AccountLevel
	FROM Account
	WHERE AccountLevel > 100;

CREATE VIEW SkilledPlayerInstance AS
	SELECT Account_ID, ChampionName, Kills, Deaths
	FROM PlayerInstance
    WHERE (Kills > 10) AND (Deaths < Kills/2);
    

CREATE TRIGGER RemoveChampion
BEFORE DELETE ON Champion
FOR EACH ROW
        SIGNAL SQLSTATE '2234' SET MESSAGE_TEXT = "Cannot remove champions from the game";
        
        
SELECT Account.Account_ID, PlayerInstance.Player_ID
FROM Account
JOIN PlayerInstance ON Account.Account_ID=PlayerInstance.Account_ID;
    




