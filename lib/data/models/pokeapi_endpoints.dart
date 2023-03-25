enum PokeApiEndpoints {
  pokemon,
}

extension PokeApiEndpointsExtension on PokeApiEndpoints {
  String get path {
    switch (this) {
      case PokeApiEndpoints.pokemon:
        return '/pokemon';
    }
  }
}
