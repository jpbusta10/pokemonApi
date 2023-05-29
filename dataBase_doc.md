# DATABASE
PostgreSql

## TABLES:

- ### users

|colum         | Data type  |
|--------------|------------|
|user_id'PK'   |SERIAL      |
|email         |varchar(255)|
|hashed_pass   |VARCHAR(255)|

- ### Pokemons

|colum         | Data type  |
|--------------|------------|
|pokemon_id'PK'|SERIAL      |
|pokemon_name  |VARCHAR(255)|
|pokemon_type  |VARCHAR(255)|
|pokemon_level |VARCHAR(255)|

- ### abilities

|colum         | Data type  |
|--------------|------------|
|ability_id'pk'|SERIAL      |
|ability_name  |VARCHAR(255)|


- ### pokemons_abilities

|colum          | Data type  |
|---------------|------------|
|pokemon_id'FK' |integer     |
|abilitie_id'FK'|integer     |

- ### trainers

|colum         | Data type  |
|--------------|------------|
|trainer_id'PK'|SERIAL      |
|trainer_name  |VARCHAR(255)|

- ### trainers_pokemons

|colum         | Data type  |
|--------------|------------|
|trainer_id'FK'|integer     |
|pokemon_id    |integer     |
