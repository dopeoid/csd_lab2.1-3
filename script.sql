DROP TABLE Character;
DROP TABLE Item;
DROP TABLE Playstyle;


CREATE TABLE `Playstyle` (
    `class_id` int  NOT NULL ,
    `class_name` VARCHAR(50)  NOT NULL ,
    PRIMARY KEY (
        `class_id`
    )
);

CREATE TABLE `Item` (
    `item_id` int  NOT NULL ,
    `name` VARCHAR(50)  NOT NULL ,
    `cost` int  NOT NULL ,
    `ap` int  NOT NULL ,
    `ad` int  NOT NULL ,
    `passive_effect` VARCHAR(50)  NOT NULL ,
    `last_item_change` date not NULL,
    PRIMARY KEY (
        `item_id`
    )
);

CREATE TABLE `Character` (
    `character_id` int  NOT NULL ,
    `name` VARCHAR(50)  NOT NULL ,
    `role` VARCHAR(50)  NOT NULL ,
    `class` VARCHAR(50)  NOT NULL ,
    `winrate` decimal  NOT NULL ,
    `aa_range` int  NOT NULL ,
    `scale_type` VARCHAR(50)  NOT NULL ,
    `playstyle` int  NOT NULL ,
  	`best_mythic_item_id` int NOT NULL,
    `release_date` date  NOT NULL ,
    PRIMARY KEY (
        `character_id`
    ),
  CONSTRAINT fk_operator_1
    	FOREIGN KEY (playstyle) 
    	REFERENCES Playstyle(class_id), 
  CONSTRAINT fk_operator_2
    	FOREIGN KEY (best_mythic_item_id) 
    	REFERENCES Item(item_id) 
  
);



INSERT INTO Playstyle (class_id, class_name)
VALUES
    (1,'engage'),
    (2,'disengage'),
    (3,'poke'),
    (4,'sustane');

INSERT INTO Item (item_id, name, cost, ap, ad, passive_effect, last_item_change)
VALUES
	(1,'Trinity Force',3333,0,40,'Attack Speed & Movement', '2023-07-17'),
    (2,'Divine Sunderer',3300,0,40,'Max Health % Damage & Life Steal','2023-05-17'),
    (3,'Rod of Ages',2800,60,0,'Ability Power & Max Health','2023-04-05'),
    (4,'Ludens Tempest',3200,80,0,'Ability Power & Magic Penetration','2023-05-17'),
    (5,'Moonstone Renewer',2300,35,0,'Heal Power & Ability Haste','2023-07-17'),
    (6,'Shurelyas Battlesong',2300,35,0,'Movement & Ability Haste','2023-05-17'),
    (7,'Duskblade of Draktharr',3100,0,60,'Attack Damage & Assasinations','2023-10-11'),
    (8,'Hextech Rocketbelt',3200,90,0,'Ability Power & Movement','2023-10-11'),
    (9,'JakSho, The Protean',3200,0,0,'Armor & Ability Haste','2023-07-17'),
    (10,'Liandrys Anguish',3200,80,0,'Ability Power & Ability Haste','2023-04-05'),
    (11,'Goredrinker',3200,0,55,'Attack Damage & Life Steal','2023-10-11'),
    (12,'Heartsteel',3200,0,0,'Max Heath & Ability Haste','2022-11-16'),
    (13,'Youmuus Ghostblade',3100,0,60,'Attack Damage & Movement','2023-10-11');

INSERT INTO Character (character_id, name, role, class, winrate, aa_range,
                       scale_type, playstyle, release_date,best_mythic_item_id)
VALUES
(1, 'Zeri', 'ADC', 'Marksman', 45.60, 600, 'AD', 1, '2022-01-03',1),
(2, 'Ksante', 'TOP', 'Tank Fighter', 51.17, 175, 'Armor', 1, '2022-11-02',2),
(3, 'Kassadin', 'MID', 'Assassin Mage', 52.25, 150, 'AP', 1, '2009-08-07',3),
(4, 'Xerath', 'MID', 'Artillery Mage', 49.64, 525, 'AP', 3, '2011-10-05',4),
(5, 'Ivern', 'JGL', 'Support Mage', 52.33, 475, 'Healing %', 4, '2016-10-05',5),
(6, 'Varus', 'ADC', 'Artillery Marksman', 49.82, 575, 'AD', 3, '2012-05-08',7),
(7, 'Braum', 'SUP', 'Support Tank', 49.23, 125, 'Armor', 2, '2014-05-12',9),
(8, 'Lulu', 'SUP', 'Support Mage', 46.95, 550, 'Healing %', 4, '2012-03-20',6),
(9, 'Caitlyn', 'ADC', 'Marksman', 48.81, 650, 'AD', 3, '2011-01-04',7),
(10, 'Wukong', 'JGL', 'Fighter', 48.53, 175, 'AD', 1, '2011-07-26',2),
(11, 'Renata Glasc', 'SUP', 'Support Mage', 49.30, 550, 'Healing %', 2, '2022-02-17',6),
(12, 'Akali', 'MID', 'Assassin Mage', 48.33, 125, 'AP', 1, '2010-05-11',8),
(13, 'Malphite', 'TOP', 'Tank Fighter', 50.06, 125, 'Armor', 1, '2009-09-02',9),
(14, 'Malzahar', 'MID', 'Mage', 49.2, 500, 'AP', 2, '2010-06-01',10),
(15, 'Ziggs', 'ADC', 'Artillery Mage', 53.39, 550, 'AP', 3, '2012-02-01',10),
(16, 'Lee Sin', 'JGL', 'Fighter Assassin', 47.95, 125, 'AD', 1, '2011-04-01',11),
(17, 'Sejuani', 'JGL', 'Tank', 45.44, 150, 'Armor', 2, '2012-01-17',9),
(18, 'Chogath', 'TOP', 'Tank Mage', 51.28, 125, 'Armor', 2, '2009-06-26',12),
(19, 'Soraka', 'SUP', 'Support Mage', 50.69, 550, 'Healing %', 4, '2009-02-21',5),
(20, 'Quinn', 'TOP', 'Assassin Marksman', 52.54, 525, 'AD', 1, '2013-03-01',13);





SELECT * FROM Character


