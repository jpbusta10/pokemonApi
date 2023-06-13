import express from 'express';
import PokemonController from '../controllers/PokemonController';

const pokemonController = new PokemonController();

const router = express.Router();

router.get('/pokemons', pokemonController.getPokemons);
router.get('/pokemons/name/:name', pokemonController.getPokemonByName);
router.post('/create/pokemon', pokemonController.createPokemon);
router.put('/update/pokemons', pokemonController.updatePokemon);
router.delete('/delete/pokemons/:id', pokemonController.deletePokemon);
router.get('/pokemons/random/:type', pokemonController.getPokemonRandomByType);
router.get('/pokemons/:id',pokemonController.getPokemonById);
export default router;