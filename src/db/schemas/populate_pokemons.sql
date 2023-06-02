-- Populating the pokemons table
INSERT INTO pokemons (pokemon_name, pokemon_type1, pokemon_type2, pokemon_level, pokemon_evolution_id) VALUES
    ('Bulbasaur', 'Grass', 'Poison', 5, 2),
    ('Ivysaur', 'Grass', 'Poison', 16, 3),
    ('Venusaur', 'Grass', 'Poison', 32, NULL),
    ('Charmander', 'Fire', NULL, 5, 5),
    ('Charmeleon', 'Fire', NULL, 16, 6),
    ('Charizard', 'Fire', 'Flying', 36, NULL),
    ('Squirtle', 'Water', NULL, 5, 8),
    ('Wartortle', 'Water', NULL, 16, 9),
    ('Blastoise', 'Water', NULL, 36, NULL),
    ('Caterpie', 'Bug', NULL, 3, 11),
    ('Metapod', 'Bug', NULL, 7, 12),
    ('Butterfree', 'Bug', 'Flying', 10, NULL),
    ('Weedle', 'Bug', 'Poison', 3, 14),
    ('Kakuna', 'Bug', 'Poison', 7, 15),
    ('Beedrill', 'Bug', 'Poison', 10, NULL),
    ('Pidgey', 'Normal', 'Flying', 5, 17),
    ('Pidgeotto', 'Normal', 'Flying', 18, 18),
    ('Pidgeot', 'Normal', 'Flying', 36, NULL),
    ('Rattata', 'Normal', NULL, 4, 20),
    ('Raticate', 'Normal', NULL, 20, NULL),
    ('Spearow', 'Normal', 'Flying', 7, 22),
    ('Fearow', 'Normal', 'Flying', 20, NULL),
    ('Ekans', 'Poison', NULL, 10, 24),
    ('Arbok', 'Poison', NULL, 22, NULL),
    ('Pikachu', 'Electric', NULL, 10, 26),
    ('Raichu', 'Electric', NULL, 30, NULL),
    ('Sandshrew', 'Ground', NULL, 10, 28),
    ('Sandslash', 'Ground', NULL, 22, NULL),
    ('Nidoran♀', 'Poison', NULL, 8, 30),
    ('Nidorina', 'Poison', NULL, 16, 31),
    ('Nidoqueen', 'Poison', 'Ground', 36, NULL),
    ('Nidoran♂', 'Poison', NULL, 8, 33),
    ('Nidorino', 'Poison', NULL, 16, 34),
    ('Nidoking', 'Poison', 'Ground', 36, NULL),
    ('Clefairy', 'Fairy', NULL, 8, 35),
    ('Clefable', 'Fairy', NULL, 16, NULL),
    ('Vulpix', 'Fire', NULL, 10, 37),
    ('Ninetales', 'Fire', NULL, 22, NULL),
    ('Jigglypuff', 'Normal', 'Fairy', 8, 39),
    ('Wigglytuff', 'Normal', 'Fairy', 16, NULL),
    ('Zubat', 'Poison', 'Flying', 10, 41),
    ('Golbat', 'Poison', 'Flying', 22, NULL),
    ('Oddish', 'Grass', 'Poison', 8, 43),
    ('Gloom', 'Grass', 'Poison', 16, 44),
    ('Vileplume', 'Grass', 'Poison', 36, NULL),
    ('Paras', 'Bug', 'Grass', 8, 46),
    ('Parasect', 'Bug', 'Grass', 24, NULL),
    ('Venonat', 'Bug', 'Poison', 10, 48),
    ('Venomoth', 'Bug', 'Poison', 31, NULL),
    ('Diglett', 'Ground', NULL, 10, 50),
    ('Dugtrio', 'Ground', NULL, 26, NULL),
    ('Meowth', 'Normal', NULL, 10, 52),
    ('Persian', 'Normal', NULL, 28, NULL),
    ('Psyduck', 'Water', NULL, 10, 54),
    ('Golduck', 'Water', NULL, 33, NULL),
    ('Mankey', 'Fighting', NULL, 10, 56),
    ('Primeape', 'Fighting', NULL, 28, NULL),
    ('Growlithe', 'Fire', NULL, 10, 58),
    ('Arcanine', 'Fire', NULL, 36, NULL),
    ('Poliwag', 'Water', NULL, 5, 60),
    ('Poliwhirl', 'Water', NULL, 20, 61),
    ('Poliwrath', 'Water', 'Fighting', 36, NULL),
    ('Abra', 'Psychic', NULL, 8, 63),
    ('Kadabra', 'Psychic', NULL, 16, 64),
    ('Alakazam', 'Psychic', NULL, 36, NULL),
    ('Machop', 'Fighting', NULL, 10, 66),
    ('Machoke', 'Fighting', NULL, 28, 67),
    ('Machamp', 'Fighting', NULL, 36, NULL),
    ('Bellsprout', 'Grass', 'Poison', 8, 69),
    ('Weepinbell', 'Grass', 'Poison', 21, 70),
    ('Victreebel', 'Grass', 'Poison', 36, NULL),
    ('Tentacool', 'Water', 'Poison', 5, 72),
    ('Tentacruel', 'Water', 'Poison', 30, NULL),
    ('Geodude', 'Rock', 'Ground', 10, 74),
    ('Graveler', 'Rock', 'Ground', 25, 75),
    ('Golem', 'Rock', 'Ground', 36, NULL),
    ('Ponyta', 'Fire', NULL, 16, 77),
    ('Rapidash', 'Fire', NULL, 40, NULL);

-- Populating the abilities table
INSERT INTO abilities (ability_name) VALUES
    ('Overgrow'),
    ('Chlorophyll'),
    ('Blaze'),
    ('Solar Power'),
    ('Torrent'),
    ('Rain Dish'),
    ('Shield Dust'),
    ('Run Away'),
    ('Keen Eye'),
    ('Tangled Feet'),
    ('Static'),
    ('Sand Veil'),
    ('Poison Point'),
    ('Rivalry'),
    ('Intimidate'),
    ('Guts'),
    ('Lightning Rod'),
    ('Cute Charm'),
    ('Flash Fire'),
    ('Drought'),
    ('Compound Eyes'),
    ('Tinted Lens'),
    ('Synchronize'),
    ('Inner Focus'),
    ('Stench'),
    ('Sticky Hold'),
    ('Poison Touch'),
    ('Levitate'),
    ('Illuminate'),
    ('Volt Absorb'),
    ('Water Absorb'),
    ('Thick Fat'),
    ('Early Bird'),
    ('Limber'),
    ('Own Tempo'),
    ('Insomnia'),
    ('Oblivious'),
    ('Technician'),
    ('Super Luck'),
    ('Swarm'),
    ('Speed Boost'),
    ('Arena Trap'),
    ('Sand Stream'),
    ('Rock Head'),
    ('Sturdy'),
    ('Damp'),
    ('Water Veil'),
    ('Soundproof'),
    ('Scrappy');

-- Populating the pokemons_abilities table
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES
    -- Bulbasaur
    (1, 1), -- Overgrow
    (1, 2), -- Chlorophyll
    -- Ivysaur
    (2, 1), -- Overgrow
    (2, 2), -- Chlorophyll
    -- Venusaur
    (3, 1), -- Overgrow
    (3, 2), -- Chlorophyll
    -- Charmander
    (4, 3), -- Blaze
    -- Charmeleon
    (5, 3), -- Blaze
    -- Charizard
    (6, 3), -- Blaze
    -- Squirtle
    (7, 5), -- Torrent
    -- Wartortle
    (8, 5), -- Torrent
    -- Blastoise
    (9, 5), -- Torrent
    -- Caterpie
    (10, 11), -- Shield Dust
    -- Metapod
    (11, 11), -- Shed Skin
    -- Butterfree
    (12, 11), -- Compound Eyes
    -- Weedle
    (13, 14), -- Shield Dust
    -- Kakuna
    (14, 14), -- Shed Skin
    -- Beedrill
    (15, 14), -- Swarm
    -- Pidgey
    (16, 17), -- Keen Eye
    -- Pidgeotto
    (17, 17), -- Keen Eye
    -- Pidgeot
    (18, 17), -- Keen Eye
    -- Rattata
    (19, 20), -- Run Away
    -- Raticate
    (20, 20), -- Run Away
    -- Spearow
    (21, 22), -- Keen Eye
    -- Fearow
    (22, 22), -- Keen Eye
    -- Ekans
    (23, 24), -- Intimidate
    -- Arbok
    (24, 24), -- Intimidate
    -- Pikachu
    (25, 26), -- Static
    -- Raichu
    (26, 26), -- Static
    -- Sandshrew
    (27, 28), -- Sand Veil
    -- Sandslash
    (28, 28), -- Sand Veil
    -- Nidoran♀
    (29, 30), -- Poison Point
    -- Nidorina
    (30, 30), -- Poison Point
    -- Nidoqueen
    (31, 30), -- Poison Point
    -- Nidoran♂
    (32, 33), -- Poison Point
    -- Nidorino
    (33, 33), -- Poison Point
    -- Nidoking
    (34, 33), -- Poison Point
    -- Clefairy
    (35, 35), -- Cute Charm
    -- Clefable
    (36, 35), -- Cute Charm
    -- Vulpix
    (37, 37), -- Flash Fire
    -- Ninetales
    (38, 37), -- Flash Fire
    -- Jigglypuff
    (39, 39), -- Cute Charm
    -- Wigglytuff
    (40, 39), -- Cute Charm
    -- Zubat
    (41, 41), -- Inner Focus
    -- Golbat
    (42, 41), -- Inner Focus
    -- Oddish
    (43, 43), -- Chlorophyll
    -- Gloom
    (44, 43), -- Chlorophyll
    -- Vileplume
    (45, 43), -- Chlorophyll
    -- Paras
    (46, 46), -- Effect Spore
    -- Parasect
    (47, 46), -- Effect Spore
    -- Venonat
    (48, 48), -- Compound Eyes
    -- Venomoth
    (49, 48), -- Compound Eyes
    -- Diglett
    (50, 50), -- Sand Veil
    -- Dugtrio
    (51, 50), -- Sand Veil