import 'package:pokedex_app/data/repositories/pokemon_repository.dart';
import 'package:pokedex_app/domain/models/pokemon.dart';

class GetBasicPokemonsUseCase {
  final PokemonRepository _pokemonRepository;

  GetBasicPokemonsUseCase(this._pokemonRepository);

  Future<List<Pokemon>> call({required int page}) async =>
      _pokemonRepository.getPokemons(page: page);
}
