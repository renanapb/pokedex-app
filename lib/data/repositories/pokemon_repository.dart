import 'package:pokedex_app/data/data_sources/pokeapi_data_source.dart';
import 'package:pokedex_app/data/models/pokeapi_endpoints.dart';
import 'package:pokedex_app/domain/models/pokemon.dart';

class PokemonRepository {
  final PokeApiDataSource _pokeApiDataSource;

  PokemonRepository(this._pokeApiDataSource);

  Future<List<Pokemon>> getPokemons({required int page}) async {
    final pokemonPage = await _pokeApiDataSource.getPage(
      endpoint: PokeApiEndpoints.pokemon,
      offset: 0, //TODO: add logic to increase offset based on page
    );

    final pokemonNames = pokemonPage.results.map((result) => result.name);
    final pokemons = <Pokemon>[];

    for (final name in pokemonNames) {
      final pokemonDto = await _pokeApiDataSource.getPokemon(name: name);
      pokemons.add(Pokemon(name: pokemonDto.name));
    }

    return pokemons;
  }
}
