import 'package:pokedex_app/data/network_service.dart';

class PokeApiClient {
  static const _baseUrl = 'pokeapi.co';
  static const _baseUncodedPath = '/api/v2';
  final NetworkService _networkService;

  PokeApiClient(this._networkService);

  Future<Map<String, dynamic>> fetch({
    required String path,
    Map<String, dynamic>? params,
  }) async {
    final requestUri = Uri.https(_baseUrl, _baseUncodedPath + path, params);
    final networkResponse = await _networkService.getUri(requestUri);
    return networkResponse.data;
  }
}
