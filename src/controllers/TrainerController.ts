import TrainerRepository from '../repositories/TrainerRepository';
import express from 'express';
import TrainerDTO from '../dtos/TrainerDTO';
import PokemonDto from '../dtos/PokemonDto';

export default class TrainerController{
    private trainerRepository : TrainerRepository;

    constructor(){
        this.trainerRepository = new TrainerRepository();
    }
    getAll = async (req : express.Request, res : express.Response) => {
        try{
            const trainers = await this.trainerRepository.getAll();
            res.status(200).json(trainers);
        }
        catch(err){
            res.status(500).json(err);
        }
    };

    create = async (req: express.Request, res: express.Response) => {
        const trainer = req.body;
        const trainerName = trainer.trainer_name;
        let myPokemons: PokemonDto[] = [];
      
        for (let i = 0; i < trainer.pokemons.length; i++) {
          const pokemon = trainer.pokemons[i];
          const newPokemon = new PokemonDto(0, pokemon, "", 0, []);
          myPokemons.push(newPokemon);
        }
      
        const newTrainer = new TrainerDTO(trainerName, myPokemons);
        try {
          const trainerId: number | null = await this.trainerRepository.create(newTrainer);
          res.status(201).json(trainerId);
        } catch (err) {
          console.log(err); //debug
          res.status(500).json(err);
        }
      };
      
    read = async (req : express.Request, res : express.Response) => {
        const trainerId = parseInt(req.params.trainerId);
        try{
            const trainer = await this.trainerRepository.read(trainerId);
            res.status(200).json(trainer);
        }
        catch(err){
            res.status(500).json(err);
        }
    };

    update = async (req : express.Request, res : express.Response) => {
        const trainer = req.body;
        try{
            const trainerId = await this.trainerRepository.update(trainer);
            res.status(200).json(trainerId);
        }
        catch(err){
            res.status(500).json(err);
        }
    };

    delete = async (req : express.Request, res : express.Response) => {
        const trainerId = parseInt(req.params.trainerId);
        try{
            const erased = await this.trainerRepository.delete(trainerId);
            res.status(200).json(erased);
        }
        catch(err){
            res.status(500).json(err);
        }
    };
}