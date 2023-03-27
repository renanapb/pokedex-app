import 'package:pokedex_app/data/clients/pokeapi_client.dart';
import 'package:pokedex_app/data/models/pokeapi_endpoints.dart';
import 'package:pokedex_app/data/models/pokeapi_response_page_dto.dart';
import 'package:pokedex_app/data/models/pokemon_dto.dart';

class PokeApiDataSource {
  final PokeApiClient _client;

  PokeApiDataSource(this._client);

  Future<PokeApiResponsePage> getPage({
    required PokeApiEndpoints endpoint,
    required int offset,
  }) async {
    final responseJson = await _client.fetch(
      path: endpoint.path,
      params: {'offset': '$offset'},
    );
    return PokeApiResponsePage.fromJson(responseJson);
  }

  Future<PokemonDto> getPokemon({required String name}) async {
    final responseJson = await _client.fetch(
      path: '${PokeApiEndpoints.pokemon.path}/$name',
    );
    return PokemonDto.fromJson(responseJson);
  }
}
