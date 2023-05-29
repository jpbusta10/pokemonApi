import exp from "constants";

class PokemonDto{
    id: number;
    name: string;
    type: string;
    level: number;
    abilities: string[];
    constructor(id: number, name: string, type: string, level: number, abilities: string[]){
        this.id = id;
        this.name = name;
        this.type = type;
        this.level = level;
        this.abilities = abilities;
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
    public get Type(): string{
        return this.type;
    }
    public set Type(type: string){
        this.type = type;
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
}

export default PokemonDto;