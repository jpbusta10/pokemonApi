import PokemonRepository from "../repositories/PokemonRepository";
import PokemonDto from "./PokemonDto";

class TrainerDTO{
    private trainer_id : number;
    private trainer_name : string;
    private pokemons : PokemonDto[];

    constructor( trainer_name : string, pokemons : PokemonDto[]){
        this.trainer_id = 0;//TODO: get trainer id from db
        this.trainer_name = trainer_name;
        this.pokemons = pokemons;
    }

    public get TrainerId() : number {
        return this.trainer_id;
    }
    public get TrainerName() : string {
        return this.trainer_name;
    }
    public set TrainerName(v : string) {
        this.trainer_name = v;
    }
    public get Pokemons() : PokemonDto[] {
        return this.pokemons;
    }
    public set Pokemons(v : PokemonDto[]) {
        this.pokemons = v;
    }
}

export default TrainerDTO;