import {pool} from '../db/dataBase';
import TrainerDTO from '../dtos/TrainerDTO';

export default class TrainerRepository{
    create = async (trainer: TrainerDTO): Promise<number> => {
        const trainerQuery = 'INSERT INTO trainers (trainer_name) VALUES ($1) RETURNING trainer_id';
        const values = [trainer.TrainerName];
        const pokemonQuery = 'SELECT pokemon_id FROM pokemons WHERE pokemon_name = $1';
        const pokemon_trainerQuery = 'INSERT INTO trainers_pokemons (pokemon_id, trainer_id) VALUES ($1, $2) RETURNING trainer_id';
      
        try {
          const trainerResult = await pool.query(trainerQuery, values);
          const trainerId = trainerResult.rows[0].trainer_id;
      
          for (let i = 0; i < trainer.Pokemons.length; i++) {
            const pokemonName: string = trainer.Pokemons[i].Name;
            const pokemonValues = [pokemonName];
            const pokemonResult = await pool.query(pokemonQuery, pokemonValues);
            const pokemonId = pokemonResult.rows[0].pokemon_id;
            const pokemon_trainerValues = [pokemonId, trainerId];
    
            await pool.query(pokemon_trainerQuery, pokemon_trainerValues);
          }
      
          return trainerId;
        } catch (err) {
          throw err;
        }
      };
      
    read = async (trainerId : number) : Promise<TrainerDTO> => {
        const trainerQuery = 'SELECT * FROM trainers WHERE trainer_id = $1';
        const values = [trainerId];
        const pokemonQuery = 'SELECT pokemon_name FROM pokemons WHERE pokemon_id IN (SELECT pokemon_id FROM trainers_pokemons WHERE trainer_id = $1)';
        try{
            const trainerResult = await pool.query(trainerQuery, values);
            const trainer = trainerResult.rows[0];
            const pokemonResult = await pool.query(pokemonQuery, values);
            const pokemons = pokemonResult.rows.map(pokemon => pokemon.pokemon_name);
            return new TrainerDTO(trainer.trainer_name, pokemons);
        }
        catch(err){
            throw err;
        }
    };
    update = async (trainer : TrainerDTO) : Promise<number|undefined> => {
        const trainerQuery = 'UPDATE trainers SET trainer_name = $1 WHERE trainer_id = $2';
        const values = [trainer.TrainerName, trainer.TrainerId];
        const pokemonQuery = 'SELECT pokemon_id FROM pokemons WHERE pokemon_name = $1';
        const pokemon_trainerQuery = 'UPDATE trainers_pokemons SET pokemon_id = $1 WHERE trainer_id = $2';
        try{
            await pool.query(trainerQuery, values);
            for(let i = 0; i < trainer.Pokemons.length; i++){
                const pokemonName = trainer.Pokemons[i];
                const pokemonValues = [pokemonName];
                const pokemonResult = await pool.query(pokemonQuery, pokemonValues);
                const pokemonId = pokemonResult.rows[0].pokemon_id;
                const pokemon_trainerValues = [pokemonId, trainer.TrainerId];
                await pool.query(pokemon_trainerQuery, pokemon_trainerValues);
            }
            return trainer.TrainerId;
        }
        catch(err){
            throw err;
        }
    };
    delete = async (trainerId : number) : Promise<number> => {
        const trainerQuery = 'DELETE FROM trainers WHERE trainer_id = $1';
        const values = [trainerId];
        try{
            await pool.query(trainerQuery, values);
            return trainerId;
        }
        catch(err){
            throw err;
        }
    };
    getAll = async () : Promise<TrainerDTO[]> => {
        const trainerQuery = 'SELECT * FROM trainers';
        const pokemonQuery = 'SELECT pokemon_name FROM pokemons WHERE pokemon_id IN (SELECT pokemon_id FROM trainers_pokemons WHERE trainer_id = $1)';
        try{
            const trainerResult = await pool.query(trainerQuery);
            const trainers = trainerResult.rows;
            const trainersDTO : TrainerDTO[] = [];
            for(let i = 0; i < trainers.length; i++){
                const trainer = trainers[i];
                const values = [trainer.trainer_id];
                const pokemonResult = await pool.query(pokemonQuery, values);
                const pokemons = pokemonResult.rows.map(pokemon => pokemon.pokemon_name);
                trainersDTO.push(new TrainerDTO(trainer.trainer_name, pokemons));
            }
            return trainersDTO;
        }
        catch(err){
            throw err;
        }
    };
}
