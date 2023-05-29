DROP DATABASE IF EXISTS pokemonDB;
CREATE DATABASE pokemonDB;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    hashed_pass VARCHAR(255) NOT NULL
);

CREATE TABLE pokemons (
    pokemon_id SERIAL PRIMARY KEY,
    pokemon_name VARCHAR(255) UNIQUE NOT NULL,
    pokemon_type VARCHAR(255) NOT NULL,
    pokemon_level INT NOT NULL
);

CREATE TABLE abilities(
    ability_id SERIAL PRIMARY KEY,
    ability_name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE pokemons_abilities (
    pokemon_id integer NOT NULL,
    ability_id integer NOT NULL,
    CONSTRAINT fk_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES pokemons(pokemon_id) ON DELETE CASCADE,
    CONSTRAINT fk_ability_id FOREIGN KEY (ability_id) REFERENCES abilities(ability_id) ON DELETE CASCADE
);
CREATE TABLE trainers(
    trainer_id SERIAL PRIMARY KEY,
    trainer_name VARCHAR(255) UNIQUE NOT NULL
);
CREATE TABLE trainers_pokemons (
    trainer_id integer NOT NULL,
    pokemon_id integer NOT NULL,
    CONSTRAINT fk_trainer_id FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id) ON DELETE CASCADE,
    CONSTRAINT fk_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES pokemons(pokemon_id) ON DELETE CASCADE
);



