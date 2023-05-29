-- Inserting pokemons
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Pikachu', 'Electric', 20);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Charizard', 'Fire', 50);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Bulbasaur', 'Grass', 10);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Squirtle', 'Water', 15);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Jigglypuff', 'Normal', 25);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Gengar', 'Ghost', 45);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Machamp', 'Fighting', 40);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Gyarados', 'Water', 55);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Dragonite', 'Dragon', 60);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Mewtwo', 'Psychic', 70);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Articuno', 'Ice', 65);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Zapdos', 'Electric', 65);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Moltres', 'Fire', 65);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Ditto', 'Normal', 25);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Snorlax', 'Normal', 50);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Mew', 'Psychic', 30);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Lugia', 'Psychic', 70);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Ho-Oh', 'Fire', 70);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Raikou', 'Electric', 60);
INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ('Entei', 'Fire', 60);

-- Inserting abilities
INSERT INTO abilities (ability_name) VALUES ('Static');
INSERT INTO abilities (ability_name) VALUES ('Thunderbolt');
INSERT INTO abilities (ability_name) VALUES ('Flamethrower');
INSERT INTO abilities (ability_name) VALUES ('Vine Whip');
INSERT INTO abilities (ability_name) VALUES ('Water Gun');
INSERT INTO abilities (ability_name) VALUES ('Sing');
INSERT INTO abilities (ability_name) VALUES ('Shadow Ball');
INSERT INTO abilities (ability_name) VALUES ('Karate Chop');
INSERT INTO abilities (ability_name) VALUES ('Hydro Pump');
INSERT INTO abilities (ability_name) VALUES ('Psychic');
INSERT INTO abilities (ability_name) VALUES ('Ice Beam');
INSERT INTO abilities (ability_name) VALUES ('Drill Peck');
INSERT INTO abilities (ability_name) VALUES ('Fire Spin');
INSERT INTO abilities (ability_name) VALUES ('Transform');
INSERT INTO abilities (ability_name) VALUES ('Rest');
INSERT INTO abilities (ability_name) VALUES ('Psybeam');
INSERT INTO abilities (ability_name) VALUES ('Aeroblast');
INSERT INTO abilities (ability_name) VALUES ('Sacred Fire');
INSERT INTO abilities (ability_name) VALUES ('Thunder');
INSERT INTO abilities (ability_name) VALUES ('Fire Blast');

-- Mapping pokemons and abilities in the pokemons_abilities table
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (1, 1);  -- Pikachu - Static
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (1, 2);  -- Pikachu - Thunderbolt
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (2, 3);  -- Charizard - Flamethrower
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (3, 4);  -- Bulbasaur - Vine Whip
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (4, 5);  -- Squirtle - Water Gun
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (5, 6);  -- Jigglypuff - Sing
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (6, 7);  -- Gengar - Shadow Ball
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (7, 8);  -- Machamp - Karate Chop
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (8, 9);  -- Gyarados - Hydro Pump
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (9, 10); -- Dragonite - Psychic
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (10, 11); -- Mewtwo - Ice Beam
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (11, 12); -- Articuno - Drill Peck
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (12, 13); -- Zapdos - Fire Spin
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (13, 14); -- Moltres - Transform
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (14, 15); -- Ditto - Rest
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (15, 16); -- Snorlax - Psybeam
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (16, 17); -- Mew - Aeroblast
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (17, 18); -- Lugia - Sacred Fire
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (18, 19); -- Ho-Oh - Thunder
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (19, 20); -- Raikou - Fire Blast
INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES (20, 19); -- Entei - Thunder
