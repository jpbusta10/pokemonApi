import PokemonDto from "./PokemonDto";

class TrainerDTO {
  private trainer_id?: number;
  private trainer_name: string;
  private pokemons: PokemonDto[];

  constructor(trainer_name: string, pokemons: PokemonDto[]) {
    this.trainer_name = trainer_name;
    this.pokemons = pokemons;
  }

  public get TrainerId(): number | undefined {
    return this.trainer_id;
  }
  public set TrainerId(value: number | undefined) {
    this.trainer_id = value;
  }
  public get TrainerName(): string {
    return this.trainer_name;
  }
  public set TrainerName(value: string) {
    this.trainer_name = value;
  }
  public get Pokemons(): PokemonDto[] {
    return this.pokemons;
  }
  public set Pokemons(value: PokemonDto[]) {
    this.pokemons = value;
  }
}

export default TrainerDTO;
