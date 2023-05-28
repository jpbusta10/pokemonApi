DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    hashed_pass VARCHAR(255) NOT NULL,
);

CREATE TABLE pokemon (
    pokemon_id SERIAL PRIMARY KEY,
    pokemon_name VARCHAR(255) UNIQUE NOT NULL,
    pokemon_type VARCHAR(255) NOT NULL,
);

CREATE TABLE abilities(
    ability_id SERIAL PRIMARY KEY,
    ability_name VARCHAR(255) UNIQUE NOT NULL,
    power INT NOT NULL,
);

CREATE TABLE pokemon_abilities (
    pokemon_id INT REFERENCES pokemon(pokemon_id),
    ability_id INT REFERENCES abilities(ability_id),
    PRIMARY KEY (pokemon_id, ability_id),
);
CREATE TABLE trainers(
    trainer_id SERIAL PRIMARY KEY,
    trainer_name VARCHAR(255) UNIQUE NOT NULL,
);
CREATE TABLE trainers_pokemon (
    trainer_id INT REFERENCES trainers(trainer_id),
    pokemon_id INT REFERENCES pokemon(pokemon_id),
    PRIMARY KEY (trainer_id, pokemon_id),
);
```


