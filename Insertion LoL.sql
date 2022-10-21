INSERT INTO RunePage
VALUES (1,"Electrocute", "Taste of Blood","Eyeball Collector","Ultimate Hunter","Presence of Mind", "Coup de Grace","Adaptive","Adaptive","Health"),
		(2, "Electrocute", "Cheap Shot","Zombie Ward","Ultimate Hunter","Triumph", "Coup de Grace","Attack Speed","Adaptive","Armour"),
        (3, "Lethal Tempo", "Triumph","Alacrity","Coup de Grace","Transendence", "Gathering Storm","Adaptive","Adaptive","Armour"),
        (4, "Conqueror", "Presence of Mind","Alacrity","Coup de Grace","Taste of Blood", "Ravenous Hunter","Adaptive","Adaptive","Armour"),
        (5, "Phase Rush", "Manaflow Band","Transendence","Gathering Storm","Magical Footwear", "Biscuit Delivery","Adaptive","Adaptive","Armour");
        

INSERT INTO Account
VALUES (1, "fungamer", "test@email.com", 120, "Bronze", 5000, 340),
		(2, "richard12", "test2@email.com", 10, "Iron", 5060, 0),
        (3, "sam223", "saw2@email.com", 87, "Gold", 6012, 45),
        (4, "xwadah23", "myemail@email.com", 403, "Diamond", 14568, 1980),
        (5, "proplayer", "unique@email.com", 653, "Challenger", 6022, 140);
        
INSERT INTO Champion
VALUES (Ahri, Easy, "Heals after killing 10 minions", "fires a projectile that returns to you","shoots three homing shots at nearby enemies","charms an opponent","allows the user to dash three times, lasts for 10 seconds"),
		(Zed, Hard, "Zed does bonus dmg to low health enemies","Fires A shuriken", "Creates a shadow clone of yourself that copies your abilities","Marks an enemy, repeating whatever damage you do to them over three seconds"),
        (Jhin, Easy, "Every fourth shot form your gun deals bonus damage","Fires a bouncing grenade", "Shoots your rifle and roots enemy hit","places a trap that explodes and deals damage","Ready your stance and fire 4 high damage, long range shots"),
        (Ekko, Medium, "Hitting an opponet three times does bonus damage", "Throws a ball that slows enemies","Creates a dome that stuns enemies at the target locations","Dash forward, enchancing your next attack","Rewing time, returning yourself to a spot you were in 4 seconds ago and healing you"),
        (Garen, Easy, "Heal quickly outside of combat","Silence an enemy and deal damage", "Gain a shield that reduces incoming damage","spin in a circle for 2 seconds, dealing damage to all enemies around you","Deal Huge damage to an opponent, increased based on their missing health");
        
INSERT INTO Game
VALUES (1, "Red", 32, 20, 34, 20000, 13000),
		(2, "Red", 40, 45, 52, 34000, 40000),
        (3, "Blue", 30, 31, 3, 25000, 8000),
        (4, "Blue", 10, 10, 0, 10000, 2000),
        (5, "Blue", 55, 53, 15, 40000, 20000);
        
INSERT INTO ChampionOwnership
VALUES (1,Ahri),
		(4,Zed),
        (2,Ekko),
        (3,Garen),
        (5,Garen);
        
INSERT INTO PlayerInstance
VALUES (1,Red,1,1,1,Ahri,Everfrost,NULL,NULL,NULL,NULL,NULL,25,3,1,5,4000),
	(2,Red,1,2,1,Zed,Duskblade,Boots,NULL,NULL,NULL,NULL,60,5,2,7,5500),
    (3,Blue,1,3,2,Ekko,Protobelt,Boots,NULL,NULL,NULL,NULL,77,0,2,0,3000),
    (4,Blue,2,1,2,Ekko,Protobelt,Boots,"Nashors Tooth",NULL,NULL,NULL,100,15,2,3,10000),
	(5,Red,1,3,3,Jhin,Galeforce,Boots,"Collector",NULL,NULL,NULL,200,5,8,3,8000),
        