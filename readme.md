# Lab 2. The RPG character - the most appropriate item handbook
## Handbook Character

1) character_id int NOT NULL , - character identifier
2) name VARCHAR(50) NOT NULL , - character name
3) `role` VARCHAR(50) NOT NULL , - his position in the game
4) `class` VARCHAR(50) NOT NULL , - character's class affiliation
5) `winrate` decimal NOT NULL , - percentage of victories of the character in games
6) `aa_range` int NOT NULL , - (auto attack range) attack range of the character 
7) `scale_type` VARCHAR(50) NOT NULL , - the type of resource that has the highest value of the derived utility of the character per unit of this resource
8) `playstyle` int NOT NULL , - the main style of play for the character
9) `best_mythic_item_id` int NOT NULL , - the most suitable to this character by style of play item
10) `release_date` date NOT NULL , - character's release date

## Handbook Item

Consists of information about items.
1) `item_id` int NOT NULL , - item identifier
2) `name` VARCHAR(50) NOT NULL , - item name
3) `cost` int NOT NULL , - price for which the item is purchased
4) `ap` int NOT NULL , - (Arcane Power) - the amount of skill power that the item provides
5) `ad` int NOT NULL , - (Attack Damage) - the amount of attack power that the item provides
6) `passive_effect` VARCHAR(50) NOT NULL , - directionality of passive skill 
7) `last_item_change` date not NULL, - date of last modification of this item

## Table Playstyle:

Consists of 4 core game playstyles –
1)	engage – aggressive
2)	disengage – defensive
3)	poke – little drain damage from safe zone
4)	sustain – healing & shielding 

## ER-diagram

![Image alt](https://github.com/dopeoid/csd_lab2.1-3/blob/main/src/diagram.jpg)

## Data Insertion

There is .sql script on SQLite in this repo, but if you don’t want to execute it, there are screenshots, that show the correctness of the script:
 
![Image alt](https://github.com/dopeoid/csd_lab2.1-3/blob/main/src/scr1.jpg)

![Image alt](https://github.com/dopeoid/csd_lab2.1-3/blob/main/src/scr2.jpg)
