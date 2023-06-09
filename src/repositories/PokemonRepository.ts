import { query } from 'express';
import { pool } from '../db/dataBase';
import PokemonDTO from '../dtos/PokemonDto';

export default class PokemonRepository {
    public async getAll(): Promise<PokemonDTO[]> {
        const queryText = `
          SELECT
            pokemons.pokemon_id,
            pokemons.pokemon_name,
            pokemons.pokemon_type1,
            pokemons.pokemon_type2,
            pokemons.pokemon_level,
            pokemons.pokemon_evolution_id,
            array_agg(abilities.ability_name) AS abilities
          FROM
            pokemons
            INNER JOIN pokemons_abilities ON pokemons.pokemon_id = pokemons_abilities.pokemon_id
            INNER JOIN abilities ON pokemons_abilities.ability_id = abilities.ability_id
          GROUP BY
            pokemons.pokemon_id
        `;
        try {
            const res = await pool.query(queryText);
            return res.rows.map((row) => new PokemonDTO(row.pokemon_id, row.pokemon_name, row.pokemon_type1, row.pokemon_type2, row.pokemon_level, row.abilities, row.pokemon_evolution_id));
        } catch (err) {
            throw new Error(`Unable to get all pokemons`);
        }
    }


    public async getByName(name: string): Promise<PokemonDTO> {
        const queryText = 'SELECT * FROM pokemons INNER JOIN pokemons_abilities ON pokemon.id = pokemons_abilities.pokemon_id INNER JOIN abilities ON pokemons_abilities.ability_id = abilities.id WHERE pokemon.name = $1';
        const value = [name];
        try {
            const res = await pool.query(queryText, value);
            return new PokemonDTO(res.rows[0].id, res.rows[0].name, res.rows[0].type1, res.rows[0].type2, res.rows[0].level, res.rows[0].abilities, res.rows[0].id_evolution);
        }
        catch (err) {
            throw new Error('unable to get pokemon: ${err.message}');
        }
    };
    public async create(pokemon: PokemonDTO): Promise<number> {
        const pokemonQuery = 'INSERT INTO pokemons (pokemon_name, pokemon_type, pokemon_level) VALUES ($1, $2, $3) RETURNING pokemon_id';
        const values = [pokemon.Name, pokemon.Type1, pokemon.type2, pokemon.Level];

        const abilitiesQuery = 'INSERT INTO abilities (ability_name) VALUES ($1) ON CONFLICT (ability_name) DO UPDATE SET ability_name = EXCLUDED.ability_name RETURNING ability_id';
        // Insert into "pokemons_abilities" table
        const pokemonAbilitiesQuery = 'INSERT INTO pokemons_abilities (pokemon_id, ability_id) VALUES ($1, $2) RETURNING pokemon_id';

        try {
            const abilityIds: number[] = [];

            for (let i = 0; i < pokemon.Abilities.length; i++) {
                const abilityName = pokemon.Abilities[i];
                const abilityValues = [abilityName];
                const abilityResult = await pool.query(abilitiesQuery, abilityValues);
                const abilityId = abilityResult.rows[0].ability_id;
                abilityIds.push(abilityId);
            }

            // Insert into "pokemons" table
            const pokemonResult = await pool.query(pokemonQuery, values);
            const pokemonId = pokemonResult.rows[0].pokemon_id;

            for (const abilityId of abilityIds) {
                const pokemonAbilitiesValues = [pokemonId, abilityId];
                await pool.query(pokemonAbilitiesQuery, pokemonAbilitiesValues);
            }

            // Return the ID of the created Pokemon
            return pokemonId;
        } catch (err) {
            throw new Error('Unable to create Pokemon');
        }


    }

    public async update(pokemon: PokemonDTO): Promise<number> {
        const queryText = 'UPDATE pokemons SET name = $1, type = $2, level = $3 WHERE id = $4 RETURNING *';
        const values = [pokemon.Name, pokemon.Type1, pokemon.Type2, pokemon.Level, pokemon.Id];
        //fist check if abiliety exists then update or create if not exist
        const abilitiesQuery = 'INSERT INTO abilities (ability_name) VALUES ($1) ON CONFLICT (ability_name) DO UPDATE SET ability_name = $1 RETURNING *';
        const abilitiesValues = [pokemon.Abilities[0], pokemon.Id];
        try {
            const res = await pool.query(queryText, values);
            const res2 = await pool.query(abilitiesQuery, abilitiesValues);
            return res.rows[0].id;
        }
        catch (err) {
            throw new Error('unable to update pokemon: ${err.message}');
        }
    };
    public async delete(id: number): Promise<number> {
        const queryText = 'DELETE FROM pokemon WHERE id = $1 RETURNING *';
        const value = [id];
        const abilitiesQuery = 'DELETE FROM abilities WHERE pokemon_id = $1 RETURNING *';
        const abilitiesValue = [id];
        try {
            const res = await pool.query(queryText, value);
            const res2 = await pool.query(abilitiesQuery, abilitiesValue);
            return res.rows[0].id;
        }
        catch (err: any) {
            throw new Error('unable to delete pokemon: ${type}: ${err.message}');
        }
    };
    public async getPokemonByid(id: number): Promise<PokemonDTO> {
        const queryText = 'SELECT p.*, ARRAY_AGG(a.ability_name) AS abilities \
        FROM pokemons p\
        INNER JOIN pokemons_abilities pa ON p.pokemon_id = pa.pokemon_id \
        INNER JOIN abilities a ON pa.ability_id = a.ability_id \
        WHERE p.pokemon_id = $1\
        GROUP BY p.pokemon_id'
        const value = [id];
        try{
            const res = await pool.query(queryText, value);
            const row = res.rows[0];
            if(!row){
                throw new Error('no pokemon find with that id')
            }
            const abilities = row.abilities || [];
            console.log('database');
            console.log(row);
            return new PokemonDTO(row.pokemon_id, row.pokemon_name, row.pokemon_type1, row.pokemon_type2, row.pokemon_level, abilities, row.pokemon_evolution_id);
        }
        catch(err: any){
            throw new Error(`Unable to get Pokémon by id ${id}: ${err.message}`);
        }

    }
    ///select one pokemon random by type
    public async getPokemonRandomByType(type: string): Promise<PokemonDTO> {
        const queryText = 'SELECT p.*, ARRAY_AGG(a.ability_name) AS abilities \
                           FROM pokemons p \
                           INNER JOIN pokemons_abilities pa ON p.pokemon_id = pa.pokemon_id \
                           INNER JOIN abilities a ON pa.ability_id = a.ability_id \
                           WHERE p.pokemon_type1 = $1 OR p.pokemon_type2 = $1 \
                           GROUP BY p.pokemon_id \
                           ORDER BY RANDOM() \
                           LIMIT 1';
        const value = [type];
        try {
            const res = await pool.query(queryText, value);
            const row = res.rows[0];
            if (!row) {
                throw new Error('No Pokémon found for the specified type.');
            }
            const abilities = row.abilities || []; // Store the abilities in an array
            return new PokemonDTO(row.pokemon_id, row.pokemon_name, row.pokemon_type1, row.pokemon_type2, row.pokemon_level, abilities, row.pokemon_evolution_id);
        } catch (err: any) {
            throw new Error(`Unable to get Pokémon by type ${type}: ${err.message}`);
        }
    };




} 