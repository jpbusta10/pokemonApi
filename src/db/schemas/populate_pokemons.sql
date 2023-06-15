-- Populating the pokemons table
INSERT INTO pokemons (pokemon_name, pokemon_type1, pokemon_type2, pokemon_level, pokemon_evolution_id) VALUES
    ('Bulbasaur', 'Grass', 'Poison', 5, 2),     --1
    ('Ivysaur', 'Grass', 'Poison', 16, 3),      --2
    ('Venusaur', 'Grass', 'Poison', 32, NULL),  --3
    ('Charmander', 'Fire', NULL, 5, 5),         --4
    ('Charmeleon', 'Fire', NULL, 16, 6),        --5
    ('Charizard', 'Fire', 'Flying', 36, NULL),  --6 
    ('Squirtle', 'Water', NULL, 5, 8),          --7 
    ('Wartortle', 'Water', NULL, 16, 9),        --8
    ('Blastoise', 'Water', NULL, 36, NULL),     --9
    ('Caterpie', 'Bug', NULL, 3, 11),           --10 
    ('Metapod', 'Bug', NULL, 7, 12),            --11
    ('Butterfree', 'Bug', 'Flying', 10, NULL),  --12
    ('Weedle', 'Bug', 'Poison', 3, 14),         --13
    ('Kakuna', 'Bug', 'Poison', 7, 15),         --14
    ('Beedrill', 'Bug', 'Poison', 10, NULL),    --15    
    ('Pidgey', 'Normal', 'Flying', 5, 17),      --16
    ('Pidgeotto', 'Normal', 'Flying', 18, 18),  --17
    ('Pidgeot', 'Normal', 'Flying', 36, NULL),  --18
    ('Rattata', 'Normal', NULL, 4, 20),         --19
    ('Raticate', 'Normal', NULL, 20, NULL),     --20
    ('Spearow', 'Normal', 'Flying', 7, 22),     --21
    ('Fearow', 'Normal', 'Flying', 20, NULL),   --22
    ('Ekans', 'Poison', NULL, 10, 24),          --23
    ('Arbok', 'Poison', NULL, 22, NULL),        --24
    ('Pikachu', 'Electric', NULL, 10, 26),      --25
    ('Raichu', 'Electric', NULL, 30, NULL),     --26
    ('Sandshrew', 'Ground', NULL, 10, 28),      --27
    ('Sandslash', 'Ground', NULL, 22, NULL),    --28
    ('Nidoran♀', 'Poison', NULL, 8, 30),        --29
    ('Nidorina', 'Poison', NULL, 16, 31),       --30
    ('Nidoqueen', 'Poison', 'Ground', 36, NULL),--31
    ('Nidoran♂', 'Poison', NULL, 8, 33),        --32
    ('Nidorino', 'Poison', NULL, 16, 34),       --33
    ('Nidoking', 'Poison', 'Ground', 36, NULL), --34
    ('Clefairy', 'Fairy', NULL, 8, 35),         --35
    ('Clefable', 'Fairy', NULL, 16, NULL),      --36
    ('Vulpix', 'Fire', NULL, 10, 37),           --37
    ('Ninetales', 'Fire', NULL, 22, NULL),      --38
    ('Jigglypuff', 'Normal', 'Fairy', 8, 39),   --39
    ('Wigglytuff', 'Normal', 'Fairy', 16, NULL),--40
    ('Zubat', 'Poison', 'Flying', 10, 41),      --41
    ('Golbat', 'Poison', 'Flying', 22, NULL),   --42
    ('Oddish', 'Grass', 'Poison', 8, 43),       --43
    ('Gloom', 'Grass', 'Poison', 16, 44),       --44
    ('Vileplume', 'Grass', 'Poison', 36, NULL), --45
    ('Paras', 'Bug', 'Grass', 8, 46),           --46
    ('Parasect', 'Bug', 'Grass', 24, NULL),     --47
    ('Venonat', 'Bug', 'Poison', 10, 48),       --48
    ('Venomoth', 'Bug', 'Poison', 31, NULL),    --49
    ('Diglett', 'Ground', NULL, 10, 50),        --50
    ('Dugtrio', 'Ground', NULL, 26, NULL),      --51
    ('Meowth', 'Normal', NULL, 10, 52),         --52
    ('Persian', 'Normal', NULL, 28, NULL),      --53
    ('Psyduck', 'Water', NULL, 10, 54),         --54
    ('Golduck', 'Water', NULL, 33, NULL),       --55
    ('Mankey', 'Fighting', NULL, 10, 56),       --56
    ('Primeape', 'Fighting', NULL, 28, NULL),   --57
    ('Growlithe', 'Fire', NULL, 10, 58),        --58
    ('Arcanine', 'Fire', NULL, 36, NULL),       --59
    ('Poliwag', 'Water', NULL, 5, 60),          --60
    ('Poliwhirl', 'Water', NULL, 20, 61),       --61
    ('Poliwrath', 'Water', 'Fighting', 36, NULL),--62
    ('Abra', 'Psychic', NULL, 8, 63),            --63
    ('Kadabra', 'Psychic', NULL, 16, 64),       --64
    ('Alakazam', 'Psychic', NULL, 36, NULL),    --65
    ('Machop', 'Fighting', NULL, 10, 66),       --66
    ('Machoke', 'Fighting', NULL, 28, 67),      --67
    ('Machamp', 'Fighting', NULL, 36, NULL),    --68
    ('Bellsprout', 'Grass', 'Poison', 8, 69),   --69
    ('Weepinbell', 'Grass', 'Poison', 21, 70),  --70
    ('Victreebel', 'Grass', 'Poison', 36, NULL),--71
    ('Tentacool', 'Water', 'Poison', 5, 72),    --72
    ('Tentacruel', 'Water', 'Poison', 30, NULL),--73
    ('Geodude', 'Rock', 'Ground', 10, 74),      --74
    ('Graveler', 'Rock', 'Ground', 25, 75),     --75
    ('Golem', 'Rock', 'Ground', 36, NULL),      --76
    ('Ponyta', 'Fire', NULL, 16, 77),           --77
    ('Rapidash', 'Fire', NULL, 40, NULL),       --78
    ('Slowpoke', 'Water', 'Psychic', 63, 80),   --79    
    ('Slowbro', 'Water', 'Psychic', 172, NULL), --80
    ('Magnemite', 'Electric', 'Steel', 65, 82), --81
    ('Magneton', 'Electric', 'Steel', 163, NULL),--82
    ('Farfetch', 'Normal', 'Flying', 123, NULL), --83
    ('Doduo', 'Normal', 'Flying', 62, 85),       --84
    ('Dodrio', 'Normal', 'Flying', 165, NULL),   --85
    ('Seel', 'Water', NULL, 65, 87),             --86
    ('Dewgong', 'Water', 'Ice', 166, NULL),     --87
    ('Grimer', 'Poison', NULL, 65, 89),         --88
    ('Muk', 'Poison', NULL, 175, NULL),         --89
    ('Shellder', 'Water', NULL, 61, 91),        --90
    ('Cloyster', 'Water', 'Ice', 184, NULL),    --91
    ('Gastly', 'Ghost', 'Poison', 62, 93),      --92
    ('Haunter', 'Ghost', 'Poison', 142, NULL),  --93
    ('Gengar', 'Ghost', 'Poison', 225, NULL),   --94
    ('Onix', 'Rock', 'Ground', 77, NULL),       --95
    ('Drowzee', 'Psychic', NULL, 66, 97),       --96
    ('Hypno', 'Psychic', NULL, 169, NULL),      --97    
    ('Krabby', 'Water', NULL, 65, 99),          --98
    ('Kingler', 'Water', NULL, 166, NULL),      --99
    ('Voltorb', 'Electric', NULL, 66, 101),     --100
    ('Electrode', 'Electric', NULL, 168, NULL), --101
    ('Exeggcute', 'Grass', 'Psychic', 65, 103), --102
    ('Exeggutor', 'Grass', 'Psychic', 186, NULL),--103
    ('Staryu', 'water', NULL, 15, 104),          --104
    ('Starmie', 'water', NULL, 40, NULL);       --105


-- Populating the abilities table
-- Populating the abilities table
INSERT INTO abilities (ability_name) VALUES
    ('Overgrow'),           -- ID: 1
    ('Chlorophyll'),        -- ID: 2
    ('Blaze'),              -- ID: 3
    ('Solar Power'),        -- ID: 4
    ('Torrent'),            -- ID: 5
    ('Rain Dish'),          -- ID: 6
    ('Shield Dust'),        -- ID: 7
    ('Run Away'),           -- ID: 8
    ('Keen Eye'),           -- ID: 9
    ('Tangled Feet'),       -- ID: 10
    ('Static'),             -- ID: 11
    ('Sand Veil'),          -- ID: 12
    ('Poison Point'),       -- ID: 13
    ('Rivalry'),            -- ID: 14
    ('Intimidate'),         -- ID: 15
    ('Guts'),               -- ID: 16
    ('Lightning Rod'),      -- ID: 17
    ('Cute Charm'),         -- ID: 18
    ('Flash Fire'),         -- ID: 19
    ('Drought'),            -- ID: 20
    ('Compound Eyes'),      -- ID: 21
    ('Tinted Lens'),        -- ID: 22
    ('Synchronize'),        -- ID: 23
    ('Inner Focus'),        -- ID: 24
    ('Stench'),             -- ID: 25
    ('Sticky Hold'),        -- ID: 26
    ('Poison Touch'),       -- ID: 27
    ('Levitate'),           -- ID: 28
    ('Illuminate'),         -- ID: 29
    ('Volt Absorb'),        -- ID: 30
    ('Water Absorb'),       -- ID: 31
    ('Thick Fat'),          -- ID: 32
    ('Early Bird'),         -- ID: 33
    ('Limber'),             -- ID: 34
    ('Own Tempo'),          -- ID: 35
    ('Insomnia'),           -- ID: 36
    ('Oblivious'),          -- ID: 37
    ('Technician'),         -- ID: 38
    ('Super Luck'),         -- ID: 39
    ('Swarm'),              -- ID: 40
    ('Speed Boost'),        -- ID: 41
    ('Arena Trap'),         -- ID: 42
    ('Sand Stream'),        -- ID: 43
    ('Rock Head'),          -- ID: 44
    ('Sturdy'),             -- ID: 45
    ('Damp'),               -- ID: 46
    ('Water Veil'),         -- ID: 47
    ('Soundproof'),         -- ID: 48
    ('Scrappy'),            -- ID: 49
    ('Thunder'),            -- ID: 50
    ('Effect Spore'),       -- ID: 51
    ('Sand Rush'),          -- ID: 52
    ('Snow Cloak'),         -- ID: 53
    ('Snow Warning'),       -- ID: 54
    ('Slush Rush'),         -- ID: 55
    ('Anger Point'),        -- ID: 56
    ('Vital Spirit'),       -- ID: 57
    ('Moxie'),              -- ID: 58
    ('Justified'),          -- ID: 59
    ('Rattled'),            -- ID: 60
    ('Magic Guard'),        -- ID: 61
    ('Sheer Force'),        -- ID: 62
    ('Analytic'),           -- ID: 63
    ('Reckless'),           -- ID: 64
    ('Iron Fist'),          -- ID: 65
    ('Ice Body'),           -- ID: 66
    ('Hustle'),             -- ID: 67
    ('Natural Cure'),       -- ID: 68
    ('Flame Body'),         -- ID: 69
    ('Minus'),              -- ID: 70
    ('Plus'),               -- ID: 71
    ('Friend Guard'),       -- ID: 72
    ('Unnerve'),            -- ID: 73
    ('Harvest'),            -- ID: 74
    ('Frisk'),              -- ID: 75
    ('Healer'),             -- ID: 76
    ('Regenerator'),        -- ID: 77
    ('Big Pecks'),          -- ID: 78
    ('Prankster'),          -- ID: 79
    ('Sand Force'),         -- ID: 80
    ('Iron Barbs'),         -- ID: 81
    ('Zen Mode'),           -- ID: 82
    ('Victory Star'),       -- ID: 83
    ('Turboblaze'),         -- ID: 84
    ('Teravolt'),           -- ID: 85
    ('Aerilate'),           -- ID: 86
    ('Pixilate'),           -- ID: 87
    ('Refrigerate'),        -- ID: 88
    ('Dry Skin'),           -- ID: 89
    ('Anticipation'),       -- ID: 90
    ('Stance Change'),      -- ID: 91
    ('Water Compaction'),   -- ID: 92
    ('Merciless'),          -- ID: 93
    ('Shields Down'),       -- ID: 94
    ('Stamina'),            -- ID: 95
    ('Comatose'),           -- ID: 96
    ('Adaptability'),       -- ID: 97
    ('Sole Stealer'),       -- ID: 98
    ('Battle Bond'),        -- ID: 99
    ('Battery'),            -- ID: 100
    ('Beast Boost'),        -- ID: 101
    ('Berserk'),            -- ID: 102
    ('Bulletproof'),        -- ID: 103
    ('Cheek Pouch'),        -- ID: 104
    ('Corrosion'),          -- ID: 105
    ('Dancer'),             -- ID: 106
    ('Dazzling'),           -- ID: 107
    ('Disguise'),           -- ID: 108
    ('Electric Surge'),     -- ID: 109
    ('Fluffy'),             -- ID: 110
    ('Full Metal Body'),    -- ID: 111
    ('Galvanize'),          -- ID: 112
    ('Grassy Surge'),       -- ID: 113
    ('Innards Out'),        -- ID: 114
    ('Liquid Voice'),       -- ID: 115
    ('Long Reach'),         -- ID: 116
    ('Misty Surge'),        -- ID: 117
    ('Neuroforce'),         -- ID: 118
     ('Power Construct'),    -- ID: 119
    ('Power of Alchemy'),   -- ID: 120
    ('Prism Armor'),        -- ID: 121
    ('Psychic Surge'),      -- ID: 122
    ('Queenly Majesty'),    -- ID: 123
    ('Receiver'),           -- ID: 124
    ('RKS System'),         -- ID: 125
    ('Schooling'),          -- ID: 126
    ('Shadow Shield'),      -- ID: 127
    ('Shadow Surge'),       -- ID: 128
    ('Shields Dow'),       -- ID: 129
    ('Slush'),              -- ID: 130
    ('Soul-Heart'),         -- ID: 131
    ('Steelworker'),        -- ID: 132
    ('Sta'),                -- ID: 133
    ('Surge Surfer'),       -- ID: 134
    ('Tangling Hair'),      -- ID: 135
    ('Telepathy'),          -- ID: 136
    ('Triage'),             -- ID: 137
    ('Water Bubble'),       -- ID: 138
    ('Water Compactor'),   -- ID: 139
    ('Wimp Out');           -- ID: 140
         

-- Populating the pokemons_abilities table
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES
   -- Bulbasaur
(1, 1),     -- Bulbasaur has ability ID 1 (Overgrow)
(1, 2),     -- Bulbasaur has ability ID 2 (Chlorophyll)

-- Ivysaur
(2, 1),     -- Ivysaur has ability ID 1 (Overgrow)
(2, 2),     -- Ivysaur has ability ID 2 (Chlorophyll)

-- Venusaur
(3, 1),     -- Venusaur has ability ID 1 (Overgrow)
(3, 2),     -- Venusaur has ability ID 2 (Chlorophyll)

-- Charmander
(4, 3),     -- Charmander has ability ID 3 (Blaze)

-- Charmeleon
(5, 3),     -- Charmeleon has ability ID 3 (Blaze)

-- Charizard
(6, 3),     -- Charizard has ability ID 3 (Blaze)

-- Squirtle
(7, 5),     -- Squirtle has ability ID 5 (Torrent)

-- Wartortle
(8, 5),     -- Wartortle has ability ID 5 (Torrent)

-- Blastoise
(9, 5),     -- Blastoise has ability ID 5 (Torrent)

-- Caterpie
(10, 7),    -- Caterpie has ability ID 7 (Shield Dust)

-- Metapod
(11, 7),    -- Metapod has ability ID 7 (Shield Dust)

-- Butterfree
(12, 11),   -- Butterfree has ability ID 11 (Compound Eyes)

-- Weedle
(13, 7),    -- Weedle has ability ID 7 (Shield Dust)

-- Kakuna
(14, 14),   -- Kakuna has ability ID 14 (Shed Skin)

-- Beedrill
(15, 14),   -- Beedrill has ability ID 14 (Swarm)

-- Pidgey
(16, 17),   -- Pidgey has ability ID 17 (Keen Eye)

-- Pidgeotto
(17, 17),   -- Pidgeotto has ability ID 17 (Keen Eye)

-- Pidgeot
(18, 17),   -- Pidgeot has ability ID 17 (Keen Eye)

-- Rattata
(19, 20),   -- Rattata has ability ID 20 (Run Away)

-- Raticate
(20, 20),   -- Raticate has ability ID 20 (Run Away)

-- Spearow
(21, 22),   -- Spearow has ability ID 22 (Keen Eye)

-- Fearow
(22, 22),   -- Fearow has ability ID 22 (Keen Eye)

-- Ekans
(23, 24),   -- Ekans has ability ID 24 (Intimidate)

-- Arbok
(24, 24),   -- Arbok has ability ID 24 (Intimidate)

-- Pikachu
(25, 11),   -- Pikachu has ability ID 11 (Static)
(25, 50),   -- Pikachu has ability ID 50 (Thunder)

-- Raichu
(26, 11),   -- Raichu has ability ID 11 (Static)
(26, 50),   -- Raichu has ability ID 50 (Thunder)
-- Sandshrew
(27, 12),   -- Sandshrew has ability ID 12 (Sand Veil)

-- Sandslash
(28, 12),   -- Sandslash has ability ID 12 (Sand Veil)

-- Nidoran♀
(29, 13),   -- Nidoran♀ has ability ID 13 (Poison Point)

-- Nidorina
(30, 13),   -- Nidorina has ability ID 13 (Poison Point)

-- Nidoqueen
(31, 13),   -- Nidoqueen has ability ID 13 (Poison Point)

-- Nidoran♂
(32, 13),   -- Nidoran♂ has ability ID 13 (Poison Point)

-- Nidorino
(33, 13),   -- Nidorino has ability ID 13 (Poison Point)

-- Nidoking
(34, 13),   -- Nidoking has ability ID 13 (Poison Point)

-- Clefairy
(35, 18),   -- Clefairy has ability ID 18 (Cute Charm)

-- Clefable
(36, 18),   -- Clefable has ability ID 18 (Cute Charm)

-- Vulpix
(37, 19),   -- Vulpix has ability ID 19 (Flash Fire)

-- Ninetales
(38, 19),   -- Ninetales has ability ID 19 (Flash Fire)

-- Jigglypuff
(39, 18),   -- Jigglypuff has ability ID 18 (Cute Charm)

-- Wigglytuff
(40, 18),   -- Wigglytuff has ability ID 18 (Cute Charm)

-- Zubat
(41, 24),   -- Zubat has ability ID 24 (Inner Focus)

-- Golbat
(42, 24),   -- Golbat has ability ID 24 (Inner Focus)

-- Oddish
(43, 2),    -- Oddish has ability ID 2 (Chlorophyll)

-- Gloom
(44, 2),    -- Gloom has ability ID 2 (Chlorophyll)

-- Vileplume
(45, 2),    -- Vileplume has ability ID 2 (Chlorophyll)

-- Paras
(46, 51),   -- Paras has ability ID 51 (Effect Spore)

-- Parasect
(47, 51),   -- Parasect has ability ID 51 (Effect Spore)

-- Venonat
(48, 48),   -- Venonat has ability ID 48 (Compound Eyes)

-- Venomoth
(49, 48),   -- Venomoth has ability ID 48 (Compound Eyes)

-- Diglett
(50, 12),   -- Diglett has ability ID 12 (Sand Veil)

-- Dugtrio
(51, 12),   -- Dugtrio has ability ID 12 (Sand Veil)
-- Meowth
(52, 26),   -- Meowth has ability ID 26 (Pickup)
(52, 49),   -- Meowth has ability ID 49 (Technician)

-- Persian
(53, 46),   -- Persian has ability ID 46 (Limber)
(53, 49),   -- Persian has ability ID 49 (Technician)

-- Psyduck
(54, 6),    -- Psyduck has ability ID 6 (Damp)
(54, 31),   -- Psyduck has ability ID 31 (Cloud Nine)

-- Golduck
(55, 6),    -- Golduck has ability ID 6 (Damp)
(55, 31),   -- Golduck has ability ID 31 (Cloud Nine)

-- Mankey
(56, 16),   -- Mankey has ability ID 16 (Anger Point)
(56, 34),   -- Mankey has ability ID 34 (Vital Spirit)

-- Primeape
(57, 16),   -- Primeape has ability ID 16 (Anger Point)
(57, 34),   -- Primeape has ability ID 34 (Vital Spirit)

-- Growlithe
(58, 19),   -- Growlithe has ability ID 19 (Flash Fire)
(58, 34),   -- Growlithe has ability ID 34 (Intimidate)

-- Arcanine
(59, 19),   -- Arcanine has ability ID 19 (Flash Fire)
(59, 34),   -- Arcanine has ability ID 34 (Intimidate)

-- Poliwag
(60, 31),   -- Poliwag has ability ID 31 (Water Absorb)
(60, 6),    -- Poliwag has ability ID 6 (Damp)

-- Poliwhirl
(61, 31),   -- Poliwhirl has ability ID 31 (Water Absorb)
(61, 6),    -- Poliwhirl has ability ID 6 (Damp)

-- Poliwrath
(62, 11),   -- Poliwrath has ability ID 11 (Swift Swim)
(62, 6),    -- Poliwrath has ability ID 6 (Damp)

-- Abra
(63, 23),   -- Abra has ability ID 23 (Synchronize)
(63, 35),   -- Abra has ability ID 35 (Magic Guard)

-- Kadabra
(64, 23),   -- Kadabra has ability ID 23 (Synchronize)
(64, 35),   -- Kadabra has ability ID 35 (Magic Guard)

-- Alakazam
(65, 23),   -- Alakazam has ability ID 23 (Synchronize)
(65, 35),   -- Alakazam has ability ID 35 (Magic Guard)

-- Machop
(66, 16),   -- Machop has ability ID 16 (Guts)
(66, 53),   -- Machop has ability ID 53 (Steadfast)

-- Machoke
(67, 16),   -- Machoke has ability ID 16 (Guts)
(67, 53),   -- Machoke has ability ID 53 (Steadfast)

-- Machamp
(68, 16),   -- Machamp has ability ID 16 (Guts)
(68, 53),   -- Machamp has ability ID 53 (Steadfast
-- Bellsprout
(69, 2),    -- Bellsprout has ability ID 2 (Chlorophyll)
(69, 21),   -- Bellsprout has ability ID 21 (Gluttony)

-- Weepinbell
(70, 2),    -- Weepinbell has ability ID 2 (Chlorophyll)
(70, 21),   -- Weepinbell has ability ID 21 (Gluttony)

-- Victreebel
(71, 2),    -- Victreebel has ability ID 2 (Chlorophyll)
(71, 21),   -- Victreebel has ability ID 21 (Gluttony)

-- Tentacool
(72, 46),   -- Tentacool has ability ID 46 (Clear Body)
(72, 33),   -- Tentacool has ability ID 33 (Liquid Ooze)

-- Tentacruel
(73, 46),   -- Tentacruel has ability ID 46 (Clear Body)
(73, 33),   -- Tentacruel has ability ID 33 (Liquid Ooze)

-- Geodude
(74, 45),   -- Geodude has ability ID 45 (Rock Head)
(74, 33),   -- Geodude has ability ID 33 (Sturdy)

-- Graveler
(75, 45),   -- Graveler has ability ID 45 (Rock Head)
(75, 33),   -- Graveler has ability ID 33 (Sturdy)

-- Golem
(76, 45),   -- Golem has ability ID 45 (Rock Head)
(76, 33),   -- Golem has ability ID 33 (Sturdy)

-- Ponyta
(77, 22),   -- Ponyta has ability ID 22 (Run Away)
(77, 33),   -- Ponyta has ability ID 33 (Flash Fire)

-- Rapidash
(78, 22),   -- Rapidash has ability ID 22 (Run Away)
(78, 33),   -- Rapidash has ability ID 33 (Flash Fire)

-- Slowpoke
(79, 33),   -- Slowpoke has ability ID 33 (Oblivious)
(79, 6),    -- Slowpoke has ability ID 6 (Own Tempo)

-- Slowbro
(80, 33),   -- Slowbro has ability ID 33 (Oblivious)
(80, 6),    -- Slowbro has ability ID 6 (Own Tempo)

-- Magnemite
(81, 29),   -- Magnemite has ability ID 29 (Magnet Pull)
(81, 45),   -- Magnemite has ability ID 17 (Sturdy)

-- Magneton
(82, 29),   -- Magneton has ability ID 29 (Magnet Pull)
(82, 45),   -- Magneton has ability ID 17 (Sturdy)

-- Farfetch
(83, 9),    -- Farfetch has ability ID 9 (Keen Eye)
(83, 33),   -- Farfetch has ability ID 33 (Inner Focus)

-- Doduo
(84, 9),    -- Doduo has ability ID 9 (Run Away)
(84, 34),   -- Doduo has ability ID 34 (Early Bird)

-- Dodrio
(85, 9),    -- Dodrio has ability ID 9 (Run Away
-- Seel
(86, 30),   -- Seel has ability ID 30 (Thick Fat)
(86, 11),   -- Seel has ability ID 11 (Hydration)

-- Dewgong
(87, 30),   -- Dewgong has ability ID 30 (Thick Fat)
(87, 11),   -- Dewgong has ability ID 11 (Hydration)

-- Grimer
(88, 26),   -- Grimer has ability ID 26 (Stench)
(88, 28),   -- Grimer has ability ID 28 (Sticky Hold)

-- Muk
(89, 26),   -- Muk has ability ID 26 (Stench)
(89, 28),   -- Muk has ability ID 28 (Sticky Hold)

-- Shellder
(90, 35),   -- Shellder has ability ID 35 (Skill Link)
(90, 5),    -- Shellder has ability ID 5 (Shell Armor)

-- Cloyster
(91, 35),   -- Cloyster has ability ID 35 (Skill Link)
(91, 5),    -- Cloyster has ability ID 5 (Shell Armor)

-- Gastly
(92, 27),   -- Gastly has ability ID 27 (Levitate)

-- Haunter
(93, 27),   -- Haunter has ability ID 27 (Levitate)

-- Gengar
(94, 27),   -- Gengar has ability ID 27 (Levitate)

-- Onix
(95, 44),   -- Onix has ability ID 45 (Rock Head)
(95, 45),   -- Onix has ability ID 33 (Sturdy)

-- Drowzee
(96, 36),   -- Drowzee has ability ID 36 (Insomnia)
(96, 30),   -- Drowzee has ability ID 30 (Forewarn)

-- Hypno
(97, 36),   -- Hypno has ability ID 36 (Insomnia)
(97, 30),   -- Hypno has ability ID 30 (Forewarn)

-- Krabby
(98, 52),   -- Krabby has ability ID 52 (Hyper Cutter)
(98, 54),   -- Krabby has ability ID 54 (Sheer Force)

-- Kingler
(99, 52),   -- Kingler has ability ID 52 (Hyper Cutter)
(99, 54),   -- Kingler has ability ID 54 (Sheer Force)

-- Voltorb
(100, 48),  -- Voltorb has ability ID 30 (Soundproof)
(100, 11),   -- Voltorb has ability ID 9 (Static)

-- Electrode
(101, 30),  -- Electrode has ability ID 30 (Soundproof)
(101, 9),   -- Electrode has ability ID 9 (Static)

-- Exeggcute
(102, 4),   -- Exeggcute has ability ID 4 (Chlorophyll)
(102, 34),  -- Exeggcute has ability ID 34 (Harvest)

-- Exeggutor
(103, 4),   -- Exeggutor has ability ID 4 (Chlorophyll)
(103, 34),  -- Exeggutor has ability ID 34 (Harvest)

-- Staryu
(104, 5),

(105, 5),
(105, 31);



    
    