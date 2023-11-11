# Lab 2. The RPG character - the most appropriate item handbook
Author - Какунин Олег Алексеевич, 4 курс 4 группа

Let's take a look at a role-playing system with characters and the items most appropriate to him using the League of Legends game as an example.
## Handbook Character

1) `character_id int` - character identifier
2) `name` - character name
3) `role` - his position in the game
4) `class` - character's class affiliation
5) `winrate` - percentage of victories of the character in games
6) `aa_range` - (auto attack range) attack range of the character 
7) `scale_type` - the type of resource that has the highest value of the derived utility of the character per unit of this resource, most frequent are AP, AD or armor 
8) `playstyle` - the main style of play for the character
9) `best_mythic_item_id` - the most suitable to this character by style of play item
10) `release_date` - character's release date

## Handbook Item

Consists of information about items.
1) `item_id` - item identifier
2) `name` - item name
3) `cost` - price for which the item is purchased
4) `ap` - (Arcane Power) - the amount of skill power that the item provides
5) `ad` - (Attack Damage) - the amount of attack power that the item provides
6) `passive_effect` - directionality of passive skill 
7) `last_item_change` - date of last modification of this item

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


