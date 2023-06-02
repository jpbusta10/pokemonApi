import exp from "constants";

class PokemonDto{
    id: number;
    name: string;
    type1: string;
    type2: string;
    level: number;
    abilities: string[];
    id_evolution: number;
    constructor(id: number, name: string, type: string, type2: string, level: number, abilities: string[], id_evolution: number){
        this.id = id;
        this.name = name;
        this.type1 = type;
        this.type2 = type2;
        this.level = level;
        this.abilities = abilities;
        this.id_evolution = id_evolution;
    }
    public get Id(): number{
        return this.id;
    }
    public set Id(id: number){
        this.id = id;
    }
    public get Name(): string{
        return this.name;
    }
    public set Name(name: string){
        this.name = name;
    }
    public get Type1(): string{
        return this.type1;
    }
    public set Type1(type: string){
        this.type1 = type;
    }
    public get Type2(): string{
        return this.type2;
    }
    public set Type2(type2: string){
        this.type2 = type2;
    }
    public get Level(): number{
        return this.level;
    }
    public set Level(level: number){
        this.level = level;
    }
    public get Abilities(): string[]{
        return this.abilities;
    }
    public set Abilities(abilities: string[]){
        this.abilities = abilities;
    }
    public get Id_evolution(): number{
        return this.id_evolution;
    }
    public set Id_evolution(id_evolution: number){
        this.id_evolution = id_evolution;
    }

}

export default PokemonDto;