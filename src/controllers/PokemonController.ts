import {Request, Response} from "express";
import PokemonRepository from "../repositories/PokemonRepository";
import PokemonDTO from "../dtos/PokemonDto";

export default class PokemonController{
    private pokemonRepository: PokemonRepository;
    constructor(){
        this.pokemonRepository = new PokemonRepository();
    }
    getPokemons = async (req: Request, res: Response) => {
        try{
            const pokemons = await this.pokemonRepository.getAll();
            res.status(200).json(pokemons);
        }
        catch(err: any){
            res.status(500).json({message: "unable to get all pokemons", error: err.message});
        }
    };
    getPokemonByName = async (req: Request, res: Response) => {
        try{
            const pokemon = await this.pokemonRepository.getByName(req.params.name);
            res.status(200).json(pokemon);
        }
        catch(err: any){
            res.status(500).json({message: "unable to get pokemon", error: err.message});
        }
    };
    createPokemon = async (req: Request, res: Response) => {
        try{
            const pokemon = new PokemonDTO(req.body.id, req.body.name, req.body.type, req.body.level, req.body.abilities);
            const id = await this.pokemonRepository.create(pokemon);
            res.status(200).json({message: "pokemon created", id: id});
        }
        catch(err: any){
            res.status(500).json({message: "unable to create pokemon", error: err.message});
        }
    };
    updatePokemon = async (req: Request, res: Response) => {
        try{
            const pokemon = new PokemonDTO(req.body.id, req.body.name, req.body.type, req.body.level, req.body.abilities);
            const id = await this.pokemonRepository.update(pokemon);
            res.status(200).json({message: "pokemon updated", id: id});
        }
        catch(err: any){
            res.status(500).json({message: "unable to update pokemon", error: err.message});
        }
    };
    deletePokemon = async (req: Request, res: Response) => {
        const pokemon_id = parseInt(req.params.id);
        try{
            const id = await this.pokemonRepository.delete(pokemon_id);
            res.status(200).json({message: "pokemon deleted", id: id});
        }
        catch(err: any){
            res.status(500).json({message: "unable to delete pokemon", error: err.message});
        }
    };


}